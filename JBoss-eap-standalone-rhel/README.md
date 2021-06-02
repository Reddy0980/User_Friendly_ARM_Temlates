# JBoss EAP on RHEL (stand-alone VM)

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/jboss-eap-standalone-rhel/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/jboss-eap-standalone-rhel/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/jboss-eap-standalone-rhel/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/jboss-eap-standalone-rhel/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/jboss-eap-standalone-rhel/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/jboss-eap-standalone-rhel/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAdarshRazor%2FUser_Friendly_ARM_Temlates%2Fmain%2FJBoss-eap-standalone-rhel%2Fazuredeploy.json)
[![Deploy To Azure US Gov](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.svg?sanitize=true)](https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fjboss-eap-standalone-rhel%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fjboss-eap-standalone-rhel%2Fazuredeploy.json)

<!-- TOC -->

1. [Solution Overview](#solution-overview)
2. [Template Solution Architecture](#template-solution-architecture)
3. [Subscriptions and Costs](#subscriptions-and-costs)
4. [Prerequisites](#prerequisites)
5. [Deployment Steps](#deployment-steps)
6. [Deployment Time](#deployment-time)
7. [Validation Steps](#validation-steps)
8. [Troubleshooting](#troubleshooting)
9. [Support](#support)

<!-- /TOC -->

## Solution Overview

JBoss Enterprise Application Platform (EAP) is an open source platform for highly transactional, web-scale Java applications. EAP combines the familiar and popular Jakarta EE specifications with the latest technologies, like MicroProfile, to modernize your applications from traditional Java EE into the new world of DevOps, cloud, containers, and microservices. EAP includes everything needed to build, run, deploy, and manage enterprise Java applications in a variety of environments, including on-premises, virtual environments, and in private, public, and hybrid clouds.

Red Hat Subscription Management (RHSM) is a customer-driven, end-to-end solution that provides tools for subscription status and management and integrates with Red Hat's system management tools. To obtain an RHSM account for JBoss EAP, go to: www.redhat.com.

## Template Solution Architecture

This Azure Resource Manager (ARM) template creates all the Azure compute resources to run JBoss EAP 7.2/EAP 7.3 setup on Red Hat Enterprise Linux (RHEL) 7.7/8.0 VM as per the user choice. The following resources are created by this template:

- RHEL 7.7/8.0 Virtual Machine
- Virtual Network
- JBoss EAP 7.2/EAP 7.3 setup on a RHEL VM
- Sample Java application named **JBoss-EAP on Azure** deployed on JBoss EAP
- Storage Account

Note that the users also have the option to choose between the Red Hat Enterprise Linux versions 7.7 and 8.0 and JBoss EAP versions 7.2 and 7.3. Users can select one of the following combinations for deployment.

- JBoss EAP 7.2 on RHEL 7.7
- JBoss EAP 7.2 on RHEL 8.0
- JBoss EAP 7.3 on RHEL 8.0

Following is the Architecture:

![alt text](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/jboss-eap-standalone-rhel/images/rhel-arch.png)

To learn more about the JBoss Enterprise Application Platform, visit: [Documentation for JBoss EAP 7.2](https://access.redhat.com/documentation/red_hat_jboss_enterprise_application_platform/7.2/) and [Documentation for JBoss EAP 7.3](https://access.redhat.com/documentation/red_hat_jboss_enterprise_application_platform/7.3/).

## Subscriptions and Costs

This ARM template is designed with flexible operating system (OS) options:

- Red Hat Enterprise Linux OS as Pay-As-You-Go (PAYG) or Bring-Your-Own-Subscription (BYOS) via Red Hat Gold Image model.
- Red Hat JBoss EAP is available through BYOS only.

#### Using RHEL OS with PAYG Model

By default this template uses the on-demand Red Hat Enterprise Linux PAYG image from the Azure Gallery. When using this on-demand image, there is an additional hourly RHEL subscription charge for using this image on top of the normal compute, network and storage costs. At the same time, the instance will be registered to your Red Hat subscription, therefore consuming one of your entitlements. This will lead to "double billing". To avoid this, you would need to build your own RHEL image, which is defined in this Red Hat KB article for [uploading RHEL image to Azure](https://access.redhat.com/articles/uploading-rhel-image-to-azure) or use RHEL Gold Image from the Azure Private Gallery offering.

Read [Red Hat Enterprise Linux pricing](https://azure.microsoft.com/pricing/details/virtual-machines/red-hat/) for details on the RHEL VMs pricing with PAYG model. In order to use RHEL in PAYG model, you will need an Azure Subscription with the specified payment method ([RHEL 7.7](https://azuremarketplace.microsoft.com/marketplace/apps/RedHat.RedHatEnterpriseLinux77-ARM?tab=Overview) and [RHEL 8.0](https://azuremarketplace.microsoft.com/marketplace/apps/RedHat.RedHatEnterpriseLinux80-ARM?tab=Overview) are Azure Marketplace products and require a payment method to be specified in the Azure Subscription).

#### Using RHEL OS with BYOS Model

In order to use BYOS for RHEL OS Licensing, you need to have a valid Red Hat subscription with entitlements to use RHEL OS in Azure. Please complete the following prerequisites in order to use RHEL OS through BYOS model before you deploy this quickstart template.

1. Ensure you have RHEL OS and JBoss EAP entitlements attached to your Red Hat Subscription.
2. Authorize your Azure Subscription ID to use RHEL BYOS images. Please follow [Red Hat Subscription Management (RHSM) documentation](https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/red_hat_cloud_access_reference_guide/con-enable-subs) to complete this process. This includes multiple steps including:

    2.1 Enable Microsoft Azure as provider in your Red Hat Cloud Access Dashboard.

    2.2 Add your Azure Subscription IDs.

    2.3 Enable new products for Cloud Access on Microsoft Azure.
    
    2.4 Activate Red Hat Gold Images for your Azure Subscription. Refer to [Red Hat Subscription Management](https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/red_hat_cloud_access_reference_guide/using_red_hat_gold_images#con-gold-image-azure) for more details.

    2.5 Wait for Red Hat Gold Images to be available in your Azure subscription. These are typically available within 3 hours.
    
3. Accept the Marketplace Terms and Conditions in Azure for the RHEL BYOS Images. You can complete this by running Azure CLI commands, as instructed below. Refer to [RHEL BYOS Gold Images in Azure documentation](https://docs.microsoft.com/azure/virtual-machines/workloads/redhat/byos) for more details.

    3.1 Launch an Azure CLI session and make sure your CLI version is updated to version 2.8 or newer before running these commands. Check the CLI version by running the following command and if your [CLI version](https://docs.microsoft.com/cli/azure/install-azure-cli-windows?view=azure-cli-latest&tabs=azure-cli) requires updating.

    `az version`
    
    3.2 Once your CLI session is ready, authenticate with your Azure account. Refer to [Signing in with Azure CLI](https://docs.microsoft.com/cli/azure/authenticate-azure-cli?view=azure-cli-latest) for assistance.

    3.3 Verify the RHEL BYOS images are available in your subscription by running the following CLI command. If your RHEL BYOS is not listed, please refer to #2 and ensure that your Azure subscription is activated for RHEL BYOS images.

    `az vm image list --offer rhel-byos --all`

    3.4 Run the following command to accept the Marketplace Terms for RHEL BYOS.

    `az vm image terms accept --publisher redhat --offer rhel-byos --plan rhel-lvm77` - *For RHEL 7.7 BYOS VM*

    `az vm image terms accept --publisher redhat --offer rhel-byos --plan rhel-lvm8` - *For RHEL 8.0 BYOS VM*

4. Your subscription is now ready to deploy RHEL 7.7/8.0 BYOS virtual machines.

#### Using JBoss EAP with BYOS Model

JBoss EAP is available on Azure through BYOS model only; you need to supply your RHSM credentials along with RHSM Pool ID showing valid EAP entitlements when deploying this template. If you do not have EAP entitlement, you must obtain a [JBoss EAP evaluation subscription](https://access.redhat.com/products/red-hat-jboss-enterprise-application-platform/evaluation) or contact Red Hat for a production subscription before you get started.
