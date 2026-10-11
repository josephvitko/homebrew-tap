cask "powerbar" do
  version "1.0.0"
  sha256 "860f7ea2eb5df7be40ba75d1f3818440d4337eaf6fab0be22f028090f3f6ebf7"

  url "https://github.com/josephvitko/powerbar/releases/download/v#{version}/PowerBar-#{version}.zip"
  name "PowerBar"
  desc "Menu bar app showing live power draw, per-app energy and battery history"
  homepage "https://github.com/josephvitko/powerbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "PowerBar.app"

  uninstall quit: "io.vitko.powerbar"

  zap trash: [
    "~/Library/Application Support/PowerBar",
    "~/Library/Preferences/io.vitko.powerbar.plist",
  ]
end
