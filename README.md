# 🖼️ Save Spotlight Wallpaper

[Windows Spotlight](https://learn.microsoft.com/en-us/windows/configuration/windows-spotlight#what-does-windows-spotlight-include) can provide interesting wallpaper images for a computer's lock screen. Windows 11 Spotlight saves images to `%LocalAppData%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets`, but they have very long names and do not have a file extension.

These scripts make it easy to save or backup the recent Spotlight images to a user's directory with the current date and .jpg extension.

## ✨ Usage
Copy the PowerShell and Batch script into a directory, and double click the batch script. This will save the Spotlight images to `Pictures\Wallpaper\Spotlight` in your user folder.

The PowerShell script handles copying the images, putting them in your user's directory, and adding the extension. If you want to change the path the script copies the images to, edit the `$destination` line after `$env:USERPROFILE\` and before the last quotation mark.

The Batch script runs the PowerShell script, as a .ps1 script might not run directly due to the [Execution Policy](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3). If you rename the PowerShell script, or change its location, edit the `SET PowerShellScriptPath` line.

## 📝 License
The Batch script code was shared by [Daniel Schroeder](https://github.com/deadlydog) in a really educational [blog post](https://blog.danskingdom.com/allow-others-to-run-your-powershell-scripts-from-a-batch-file-they-will-love-you-for-it/) [under](https://blog.danskingdom.com/about/#-license) the [Creative Commons 3.0 License](https://creativecommons.org/licenses/by/3.0/).

A version of the PowerShell script was originally hobbled together by me, but it was updated by the AI Claude.

## 🔭 See also
- [bamdur/CopyDailyWindowsLockScreenPhotos](https://github.com/bamdur/CopyDailyWindowsLockScreenPhotos)
