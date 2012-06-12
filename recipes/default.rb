packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libperl5.10
  /
when "precise"
  packages |= %w/
    libperl5.14
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
