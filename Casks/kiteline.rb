cask "kiteline" do
  version "3.49.39"
  sha256 "2f9cfecadb001689caa675935a772d3b81ed1cd7ae9b0c06f0d1dfab61ebb759"

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
