Pod::Spec.new do |s|
  s.name         = "TDFCategories"
  s.version      = "2.0.25"
  s.summary      = "basic TDFCategories"

  s.description  = <<-DESC
  TDFCategories 分类工具
                   DESC

  s.homepage     = "http://git.2dfire.net/ios/TDFCategories"

  s.license      = "LICENSE"
  s.author             = { "xueyu" => "xueyu@2dfire.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "git@git.2dfire.net:ios/TDFCategories.git", tag: s.version }

# 貌似不识别
# def subspec_hash(name, files = "Classes/#{name}/*.{h,m}", dependency)
#     { spec_name: name, source_files: files, spec_dependency: dependency }
# end

subspec_hashs = [
  { spec_name: 'NSBundle'}, 
  { spec_name: 'NSString'},
  { spec_name: 'UICollectionReusableView'}, 
  { spec_name: 'UICollectionViewCell'}, 
  { spec_name: 'UIColor'}, 
  { spec_name: 'UIImage'}, 
  { spec_name: 'UILabel'}, 
  { spec_name: 'UIScrollView'}, 
  { spec_name: 'UITableViewCell'}, 
  { spec_name: 'UITableViewHeaderFooterView'}, 
  { spec_name: 'UIView'},
  { spec_name: 'UIViewController'},
  { spec_name: 'NSMutableArray'},
  { spec_name: 'NSDictionay'},
  { spec_name: 'NSData'},
  { spec_name: 'UIButton'}
]

s.subspec "Binary" do |ss|
  ss.vendored_frameworks = "#{s.name}.framework"
  ss.source_files = "#{s.name}.framework/Headers/*", "#{s.name}.framework/Versions/A/Headers/*"
  ss.public_header_files = "#{s.name}.framework/Headers/*", "#{s.name}.framework/Versions/A/Headers/*"
  ss.dependency 'TDFDataCenterKit'
  ss.dependency 'MBProgressHUD'
  ss.frameworks = 'MobileCoreServices', 'Accelerate'
end

subspec_hashs.each do |subspec_hash|
    s.subspec subspec_hash[:spec_name] do |ss|
      ss.dependency "#{s.name}/Binary"
    end
end


end
