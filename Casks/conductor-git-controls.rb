cask "conductor-git-controls" do
  version "0.4.3"
  sha256 "723be426cc05f8d517de55a5d31705118a90e71c53e6354d60443bceace60e2c"

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