Pod::Spec.new do |s|
  s.name = 'SVRFClientSwift'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '1.3.0'
  s.source = { :git => 'https://github.com/Svrf/svrf-swift4-client.git', :tag => '1.3.0' }
  s.authors = 'SVRF'
  s.license = 'MIT'
  s.homepage = 'http://developers.svrf.com'
  s.summary = 'SVRF API client'
  s.documentation_url = 'https://github.com/SVRF/svrf-swift4-client'
  s.source_files = 'SVRFClientSwift/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.5.0'
  s.swift_version = '4'
end
