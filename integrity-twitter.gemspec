Gem::Specification.new do |s|
  s.name = 'integrity-twitter'
  s.version = '1.1.1'
  s.date = '2009-08-27'
  s.summary = 'Twitter notifier for the Integrity continuous integration server'
  s.description = 'Easily let Integrity send jabber messages after each build'
  s.homepage = 'http://integrityapp.com'
  s.email = 'david.michael@sonymusic.com'
  s.authors = ['David Michael', 'Chris Saylor']
  s.has_rdoc = false
  s.files = %w(
lib/notifier/config.haml
lib/notifier/integrity_twitter.rb
)
 
  s.add_dependency 'foca-integrity'
  s.add_dependency 'twitter'
end