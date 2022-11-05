# Help

## Setup [`pre-commit-terraform`](https://pre-commit.com/hooks.html#:~:text=github.com/antonbabenko/pre%2Dcommit%2Dterraform)

1. [Install dependencies](https://github.com/antonbabenko/pre-commit-terraform#1-install-dependencies)

    ```bash
    # for MacOS
    brew update --auto-update
    brew install \
      pre-commit \
      terraform-docs \
      tflint \
      jq
    ```

2. [Install per-commit hook globally](https://github.com/antonbabenko/pre-commit-terraform#2-install-the-pre-commit-hook-globally)

    ```bash
    # Setting
    DIR=~/.git-template
    git config --global init.templateDir ${DIR}
    pre-commit init-templatedir -t pre-commit ${DIR}

    # Update
    pre-commit autoupdate
    ```

3. [Add configs and hooks](https://github.com/antonbabenko/pre-commit-terraform#3-add-configs-and-hooks):
    check [`.pre-commit-config.yaml`](./.pre-commit-config.yaml)

4. (option) Enable pre-commit hooks

    ```bash
    # In terraform directory: contain '.git' folder
    ./.local-hooks/install-pre-commit.sh
    ```

    Then, automatically work the hook beform commit.

    [Check the `.pre-commit-config.yaml` file.](./.pre-commit-config.yaml)

5. After push the commit, open GitHub Repository on your browser.

    ```bash
    gh repo view --web
    ```

## Login with Terraform Token

- Prepare
  
  ```bash
  # Environment
  export WORKSPACE_PATH="/WHERE/YOU/WANT"
  export USER_NAME="YOUR_TFC_USER_NAME"
  export TOKEN_NAME="rua-tfc"
  export TFC_TKN_PATH="${WORKSPACE_PATH}/.Terraform-TKN/${USER_NAME}"
  export TFC_TKN_FILE="${TOKEN_NAME}.tkn"
  
  # Make directory
  mkdir -p ${TFC_TKN_PATH} && cd ${TFC_TKN_PATH}

  # Get token name to create
  echo ${TOKEN_NAME} | pbcopy
  ```

- [Create Terraform Token](https://app.terraform.io/app/settings/tokens)
  
  1. Paste the token name
  2. Create
  3. Copy the generated token value on your clip board
  
- Store in local
  
  ```bash
  # From the clipboard
  pbpaste > ${TFC_TKN_PATH}/${TFC_TKN_FILE}

  # Check
  cat ${TFC_TKN_PATH}/${TFC_TKN_FILE}

  # Get copy-command
  echo "cat ${TFC_TKN_PATH}/${TFC_TKN_FILE} | pbcopy"
  # Maybe..
  # cat /Volumes/workspace/.Terraform-TKN/dev2sponge_gmail/rua-tfc.tkn | pbcopy
  ```

- Login on CLI

  ```bash
  # Login with token
  terraform login
  ```

- [Visit to install other requirements](https://github.com/hashicorp/tfc-getting-started/blob/main/README.md#requirements)

## Terraform Workspace

- [Create new workspace](https://app.terraform.io/app/re-usable-artiracts/workspaces/new)

- [Create and Use a Variable Set](https://learn.hashicorp.com/tutorials/terraform/cloud-create-variable-set?in=terraform/cloud-get-started)