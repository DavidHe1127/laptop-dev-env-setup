## VSCode

### Remote SSH via EC2

ssh config

```
Host i-0c86a2712c02ab699.domain.ap-southeast-2
  User ec2-user
  IdentityFile ~/Downloads/dave-vscode-dev.pem
  ProxyCommand bash -c "aws ssm start-session --target $(echo %h|cut -d'.' -f1) --profile $(echo %h|/usr/bin/cut -d'.' -f2) --region $(echo %h|/usr/bin/cut -d'.' -f3) --document-name A    WS-StartSSHSession --parameters 'portNumber=%p'"
```

This allows you to connect your vscode to ec2 so that you can develop on your editor.
