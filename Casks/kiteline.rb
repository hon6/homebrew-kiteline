cask "kiteline" do
  version "3.49.34"
  sha256 "bfc14026ab2bcfa3bc76bd399a61c9c54048b93f57c1c6d72b7d52a1cdc56957"

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
