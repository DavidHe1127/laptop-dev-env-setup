## Toolings

### [git open](https://github.com/paulirish/git-open)

Opens a file in the browser.

```
git open --file path/to/file
```

Bonus: you can go to next level by opening the file from your sublime. Drop this script in `/Users/davidhe/Library/Application\ Support/Sublime\ Text/Packages/User/git_open.py`.

```
import sublime
import sublime_plugin
import subprocess

class GitOpenCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        file_path = self.view.file_name()
        if not file_path:
            sublime.error_message("No file selected or unsaved file.")
            return

        file_dir = os.path.dirname(file_path)

        try:
            # Run the command
            result = subprocess.run(
                ["git", "open", "--file", file_path],
                cwd=file_dir,
                check=True,
                capture_output=True,
                text=True
            )
            # sublime.message_dialog(f"Opened {file_path} in browser.\n\nOutput:\n{result.stdout}")
        except subprocess.CalledProcessError as e:
            error_msg = f"Error running git open: {e.stderr or str(e)}"
            sublime.error_message(error_msg)
        except FileNotFoundError:
            sublime.error_message("`git open` command not found. Ensure it is installed and in your PATH.")
```

Then add a shortcut to your key bindings.

```
{
  "keys": ["super+shift+o"],
  "command": "git_open"
}
```
