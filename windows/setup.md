### Customize Windows Terminal

- Install Oh My Posh

````shell
winget install JanDeDobbeleer.OhMyPosh -s winget
````


- Remove the start text message:
    1. Go to Windows Terminal Settings.
    2. In Settings search for powershell.exe.
    3. After the powershell.exe add -nologo argument.
    4. Save setting and restart terminal.


- Gruvbox Dark color scheme for the new Windows Terminal

  ```json
    {
      "background" : "#282828",
      "black" : "#282828",
      "blue" : "#458588",
      "brightBlack" : "#928374",
      "brightBlue" : "#83A598",
      "brightCyan" : "#8EC07C",
      "brightGreen" : "#B8BB26",
      "brightPurple" : "#D3869B",
      "brightRed" : "#FB4934",
      "brightWhite" : "#EBDBB2",
      "brightYellow" : "#FABD2F",
      "cyan" : "#689D6A",
      "foreground" : "#EBDBB2",
      "green" : "#98971A",
      "name" : "Gruvbox Dark",
      "purple" : "#B16286",
      "red" : "#CC241D",
      "white" : "#A89984",
      "yellow" : "#D79921"
    }
    ```


- Install and load Terminal-Icons

  ```shell
    Install-Module -Name Terminal-Icons -Repository PSGallery  
    Import-Module Terminal-Icons
    ```

### Install Authy

```shell
winget install -e --id Twillio.Authy
```
