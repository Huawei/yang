# **Overview**

This directory contains platform-specific YANG models for Huawei's products. The directory is currently organized by network device and hardware type with each sub-directory containing the models for that network device type. Each subdirectory will be further categorized based on product version or NOS version and may have further OS/platform-specific information in a README file.

# **Integration with Huawei YANG**

## **download huawei yang files**
You can use git to clone huawei yang's repository and select product and version according your requirement.

`git clone https://github.com/Huawei/yang.git`

## **Ansible Integration**

You can customize your ansible APIs using [ansible-gen](https://github.com/HuaweiDatacomm/ansible-gen) tool. It can help you to build your ansible APIs according yang files.

## **MDT(Model-Driven Telemetry) Integration**

You can use [protoyang](https://github.com/HuaweiDatacomm/protoyang) tool to translate yang files to .proto files.
And you can integrate these .proto files with telegraf platform. For more detail, please visit [telegraf-huawei-plugin](https://github.com/HuaweiDatacomm/telegraf-huawei-plugin).

# **Documentation**
see [YANG API reference](https://intl.devzone.huawei.com/en/datacom/network-element/api-center.html).

# **Resources**
open-source projects on [HuaweiDatacomm](https://github.com/HuaweiDatacomm) organization.

Huawei Datacomm developer [website](https://devzone.huawei.com).