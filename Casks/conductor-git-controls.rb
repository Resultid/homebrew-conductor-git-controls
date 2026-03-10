cask "conductor-git-controls" do
  version "0.3.0"
  sha256 "ba692dd95565f70ec4aee10fe96a8cacde5e5c96be2bf9b4e7ce0eb93454ffd3"

  url "https://github.com/Resultid/homebrew-conductor-git-controls/releases/download/v#{version}/Conductor.Git.Controls_#{version}_aarch64.dmg"
  name "Conductor Git Controls"
  desc "Desktop Git management for Conductor workspaces"
  homepage "https://Resultid.github.io/homebrew-conductor-git-controls/"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Conductor Git Controls.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Conductor Git Controls.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.conductor.git-controls",
    "~/Library/Caches/com.conductor.git-controls",
    "~/Library/Preferences/com.conductor.git-controls.plist",
    "~/Library/Saved Application State/com.conductor.git-controls.savedState",
  ]
end