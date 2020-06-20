cat <<ALLDONE
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
"http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>pl.andsn.upkeep</string>
    <key>ProgramArguments</key>
    <array>
      <string>$(which upkeep)</string>
    </array>
    <key>EnvironmentVariables</key>
    <dict>
      <key>PATH</key>
      <string>$PATH</string>
      <key>TERM</key>
      <string>xterm-color</string>
    </dict>
    <key>StartCalendarInterval</key>
    <dict>
      <key>Hour</key>
      <integer>0</integer>
      <key>Minute</key>
      <integer>0</integer>
    </dict>
  </dict>
</plist>
ALLDONE

