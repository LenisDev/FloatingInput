Pod::Spec.new do |s|
  s.name = 'FloatingInput'
  s.version = '0.0.2'
  s.license = 'MIT'

  s.summary = 'Easy to use functional tab bar for swift projects.'
  s.homepage = 'https://github.com/LenisDev/FloatingInput'
  s.authors = { 'Manish Pandey' => '' }
  
  s.source = { :git => 'https://github.com/LenisDev/FloatingInput.git', :tag => s.version }
  s.documentation_url = 'https://lenisdev.github.io/FloatingInput/index.html'

  s.ios.deployment_target = '11.0'

  s.swift_versions = ['5.1', '5.2']

  s.source_files = ['Source/*.swift', 'Source/**/*.swift']

end
