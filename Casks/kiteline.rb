cask "kiteline" do
  version "3.49.28"
  sha256 "7f47c5364ebecc356822c2b264409ad3da16edbfae8c7521d35ce49715330e30"

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
