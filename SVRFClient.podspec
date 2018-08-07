Pod::Spec.new do |s|
  s.name = 'SVRFClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '1.1.0'
  s.source = { :git => 'git@github.com:SVRF/svrf-swift4-client.git', :tag => 'v1.1.0' }
  s.authors = 'SVRF'
  s.license = MIT
  s.homepage = 'http://developers.svrf.com'
  s.summary = 'SVRF API client'
  s.documentation_url = 'https://github.com/SVRF/svrf-swift4-client'
  s.source_files = 'SVRFClient/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.5.0'
end
