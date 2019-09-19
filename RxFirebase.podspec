#
# Be sure to run `pod lib lint RxFirebase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'RxFirebase'
    s.version          = '0.3.8'
    s.summary          = 'RxSwift extensions for Firebase.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    RxSwift extensions for Firebase.
    Including for now Database, Firestore, RemoteConfig, Storage, Functions, Auth
    DESC
    
    s.homepage         = 'https://github.com/RxSwiftCommunity/RxFirebase'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Arnaud Dorgans' => 'arnaud.dorgans@gmail.com' }
    s.source           = { :git => 'https://github.com/dyegos/RxFirebase.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    s.ios.deployment_target = '8.0'
    s.static_framework = true

    s.subspec 'Firestore' do |firestore|
        firestore.dependency 'RxFirebaseFirestore'
        firestore.source_files = 'Sources/Core/Firestore.swift'
    end
    s.subspec 'RemoteConfig' do |remote|
        remote.dependency 'RxFirebaseRemoteConfig'
        remote.source_files = 'Sources/Core/RemoteConfig.swift'
    end
    s.subspec 'Database' do |database|
        database.dependency 'RxFirebaseDatabase'
        database.source_files = 'Sources/Core/Database.swift'
    end
    s.subspec 'Storage' do |storage|
        storage.dependency 'RxFirebaseStorage'
        storage.source_files = 'Sources/Core/Storage.swift'
    end
    s.subspec 'Functions' do |functions|
        functions.dependency 'RxFirebaseFunctions'
        functions.source_files = 'Sources/Core/Functions.swift'
    end
    s.subspec 'Auth' do |auth|
        auth.dependency 'RxFirebaseAuthentication'
        auth.source_files = 'Sources/Core/Auth.swift'
    end
end
