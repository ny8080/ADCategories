Pod::Spec.new do |s|
  s.name         = "TDFCategories"
  s.version      = "0.0.1"
  s.summary      = "basic TDFCategories"

  s.description  = <<-DESC
  TDFCategories 分类工具
                   DESC

  s.homepage     = "https://github.com/ny8080/ADCategories"

  s.license      = "LICENSE"
  s.author             = { "xueyu" => "xueyu@2dfire.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ny8080/ADCategories.git", tag: s.version }

s.public_header_files = 'Classes/TDFCategories.h'
s.source_files = 'Classes/TDFCategories.h'
s.resources = "Resources/**/*.lproj"

# 貌似不识别
# def subspec_hash(name, files = "Classes/#{name}/*.{h,m}", dependency)
#     { spec_name: name, source_files: files, spec_dependency: dependency }
# end

subspec_hashs = [
  { spec_name: 'NSBundle', source_files: "Classes/NSBundle/*.{h,m}" }, 
  { spec_name: 'NSString', source_files: "Classes/NSString/*.{h,m}", spec_dependency: ["TDFDataCenterKit"] },
  { spec_name: 'UICollectionReusableView', source_files: "Classes/UICollectionReusableView/*.{h,m}" }, 
  { spec_name: 'UICollectionViewCell', source_files: "Classes/UICollectionViewCell/*.{h,m}" }, 
  { spec_name: 'UIColor', source_files: "Classes/UIColor/*.{h,m}" }, 
  { spec_name: 'UIImage', source_files: "Classes/UIImage/*.{h,m}" }, 
  { spec_name: 'UILabel', source_files: "Classes/UILabel/*.{h,m}" }, 
  { spec_name: 'UIScrollView', source_files: "Classes/UIScrollView/*.{h,m}" }, 
  { spec_name: 'UITableViewCell', source_files: "Classes/UITableViewCell/*.{h,m}",spec_dependency: ["Masonry"] }, 
  { spec_name: 'UITableViewHeaderFooterView', source_files: "Classes/UITableViewHeaderFooterView/*.{h,m}" }, 
  { spec_name: 'UIView', source_files: "Classes/UIView/*.{h,m}",spec_dependency: ["MBProgressHUD","Masonry"] },
  { spec_name: 'UIViewController', source_files: "Classes/UIViewController/*.{h,m}" },
  { spec_name: 'NSMutableArray', source_files: "Classes/NSMutableArray/*.{h,m}" },
  { spec_name: 'NSDictionay', source_files: "Classes/NSDictionay/*.{h,m}" },
  { spec_name: 'NSData', source_files: "Classes/NSData/*.{h,m}" },
  { spec_name: 'UIButton', source_files: "Classes/UIButton/*.{h,m}" }
]


subspec_hashs.each do |subspec_hash|
    s.subspec subspec_hash[:spec_name] do |ss|
        ss.source_files = subspec_hash[:source_files]
        Array(subspec_hash[:spec_dependency]).each do |dependency|
            ss.dependency dependency
        end unless subspec_hash[:spec_dependency].nil?
    end
end


end
