# BedrockConnect Add-on

## About

The BedrockConnect add-on allows Minecraft Bedrock Edition players to bypass the standard server list and connect directly to custom servers. This add-on provides an easy way to configure custom Bedrock servers from Home Assistant using the [BedrockConnect](https://github.com/Pugmatt/BedrockConnect) proxy.

## Installation

1. Navigate to the **Supervisor** panel in Home Assistant.
2. Go to the **Add-on Store** tab.
3. Click the three dots in the upper-right corner and select **Repositories**.
4. Add the following repository URL: `https://github.com/patrikulus/hassio-bedrock-connect`.
5. Search for **BedrockConnect Add-on** and click **Install**.

## Configuration

Once the add-on is installed, you can configure the list of custom Minecraft Bedrock servers to use. The configuration is done via YAML and is converted to a JSON file that BedrockConnect uses.

### Configuration Options

```yaml
servers:
  - name: "My Server 1"
    iconUrl: https://i.imgur.com/nhumQVP.png
    address: "server1.example.com"
    port: 19132
  - name: "My Server 2"
    iconUrl: https://i.imgur.com/nhumQVP.png
    address: "server2.example.com"
    port: 19132
