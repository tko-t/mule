=begin
ファイルを監視して、変更があったらクリップボードに突っ込みます
引数か環境変数('CLIPBOARD_BIND_FILE')で監視するファイルを指定します
using
  $ bundle init
  $ echo "gem 'clipboard'" >> Gemfile
  $ echo "gem 'ffi', :platforms => [:mswin, :mingw]" >> Gemfile
  $ bundle install
  # 実行
  $ ruby rb_pbcopy.rb path/to/watching_file
  # 修了
  $ ruby rb_pbcopy.rb stop
=end
require 'clipboard'

if ARGV[0] == 'kill'
  pid = File.read('pid').strip
  Process.kill(:SIGTERM, pid.to_i) && exit
  abort "[#{pid}]: killできず"
end

watching = ARGV[0]
watching = ENV['CLIPBOARD_BIND_FILE']

abort 'パスくれ' unless watching

mtime = ''

begin
  Process.daemon(true, true)
  current_pid = Process.pid
  File.open('pid', 'w') {|f| f << Process.pid.to_s }

  while true do
    File.mtime(watching).tap do |mt|
      unless mt == mtime
        Clipboard.copy(File.read(watching))
        mtime = mt
      end
    end
    sleep 1
  end
rescue => e
  File.open('error', 'w') {|f| f << e.message }
end
