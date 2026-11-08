cask "kiteline" do
  version "3.49.26"
  sha256 "dd5433e7c7883b46ceadec7f6ff6680655554705a32d9495a276e5e073ef0c95"

  url "https://github.com/hon6/kiteline/releases/download/v#{version}/Kiteline-#{version}.dmg"
  name "Kiteline"
  desc "Phone remote for Claude Code, Codex and other coding agents"
  homepage "https://tars.betac.cn/en/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Kiteline.app"

  zap trash: [
    "~/Library/Application Support/TARS",
    "~/Library/Caches/com.mrhong.tars",
    "~/Library/Preferences/com.mrhong.tars.plist",
  ]
end
