cask "powerbar" do
  version "1.0.1"
  sha256 "2ddbcfa61069cc83ad55877781faa4886cb2651074b1c1d32d416fb64ed24a68"

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
