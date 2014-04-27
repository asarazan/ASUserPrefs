Pod::Spec.new do |s|
  s.name         = "ASUserPrefs"
  s.version      = "1.0.0"
  s.summary      = "Instanced user dictionaries for easy erase on logout"
  s.homepage     = "https://github.com/asarazan/ASUserPrefs"
  s.license      = 'Apache'
  s.authors      = { "Aaron Sarazan" => "aaron@sarazan.net" }
  s.source       = { :git => "https://github.com/asarazan/ASUserPrefs.git" }
  s.source_files = "ASUserPrefs/**"
  s.platform     = :ios, '5.0'
end
