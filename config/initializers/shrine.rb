require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: "thesyaf",
  api_key:    "162549568584877",
  api_secret: "POyDkJF3BETHDRwXY15IMoYXdI8",
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}
