cask "kiteline" do
  version "3.49.33"
  sha256 "29eff23f132058d63a812aa6d5f41b60beb416f989af09decd49d98fc8e6a958"

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
