# ----------------------------------------------------------------------------
#  Copyright (c) 2019 WSO2, Inc. http://www.wso2.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# ----------------------------------------------------------------------------

# Claas is::params
# This class includes all the necessary parameters.
class is::params {
  $user = 'wso2carbon'
  $user_id = 802
  $user_group = 'wso2'
  $user_home = '/home/$user'
  $user_group_id = 802
  #check
  $hostname = 'ALB_DNS_NAME'
  ####
  $jdk_version = 'JDK_TYPE'
  $http_proxy_port = '80'
  $https_proxy_port = '443'
  $product = 'wso2is'
  $product_version = '5.8.0'
  $service_name = "${product}"
  $mediation_flow_statistics = 'false'
  $broker_elb_dns_name = 'localhost'
  $is_package = '$product-$product_version.zip'
  $is_analytics = 'localhost'
  $wso2_path="/var/lib/jenkins/workspace/$product-$product_version/${module_name}"
  $start_script_template="bin/wso2server.sh"
  $mysql_connector="mysql-connector-java-5.1.41-bin.jar"
  $puppet_modules_path ="/var/lib/jenkins/workspace/$product-$product_version/configs/modules"

  $template_list = [
    'repository/conf/datasources/master-datasources.xml',
    'repository/conf/carbon.xml',
    'repository/conf/axis2/axis2.xml',
    'repository/conf/user-mgt.xml',
    'repository/conf/tomcat/catalina-server.xml',
    'repository/deployment/server/eventpublishers/MessageFlowConfigurationPublisher.xml',
    'repository/deployment/server/eventpublishers/MessageFlowStatisticsPublisher.xml',
  ]

  # ------ Configuration Params ------ #

  # master-datasources.xml

  $wso2carbon_db_username = 'CF_DB_USERNAME'
  $wso2carbon_db_password = 'CF_DB_PASSWORD'

  $reg_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2IS_REG_DB?autoReconnect=true&amp;useSSL=false'
  $reg_db_username = 'CF_DB_USERNAME'
  $reg_db_password = 'CF_DB_PASSWORD'

  $user_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2IS_USER_DB?autoReconnect=true&amp;useSSL=false'
  $user_db_username = 'CF_DB_USERNAME'
  $user_db_password = 'CF_DB_PASSWORD'

  $identity_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2IS_IDENTITY_DB?autoReconnect=true&amp;useSSL=false'
  $identity_db_username = 'CF_DB_USERNAME'
  $identity_db_password = 'CF_DB_PASSWORD'

  $consent_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2IS_CONSENT_DB?autoReconnect=true&amp;useSSL=false'
  $consent_db_username = 'CF_DB_USERNAME'
  $consent_db_password = 'CF_DB_PASSWORD'

  # carbon.xml
  $security_keystore_location = '${carbon.home}/repository/resources/security/wso2carbon.jks'
  $security_keystore_type = 'JKS'
  $security_keystore_password = 'wso2carbon'
  $security_keystore_key_alias = 'wso2carbon'
  $security_keystore_key_password = 'wso2carbon'

  $security_trust_store_location = '${carbon.home}/repository/resources/security/client-truststore.jks'
  $security_trust_store_type = 'JKS'
  $security_trust_store_password = 'wso2carbon'

  # axis2.xml
  $transport_receiver_keystore_location = 'repository/resources/security/wso2carbon.jks'
  $transport_receiver_keystore_type = 'JKS'
  $transport_receiver_keystore_password = 'wso2carbon'
  $transport_receiver_keystore_key_password = 'wso2carbon'

  $transport_receiver_trust_store_location = 'repository/resources/security/client-truststore.jks'
  $transport_receiver_trust_store_type = 'JKS'
  $transport_receiver_trust_store_password = 'wso2carbon'

  $transport_sender_keystore_location = 'repository/resources/security/wso2carbon.jks'
  $transport_sender_keystore_type = 'JKS'
  $transport_sender_keystore_password = 'wso2carbon'
  $transport_sender_keystore_key_password = 'wso2carbon'

  $transport_sender_trust_store_location = 'repository/resources/security/client-truststore.jks'
  $transport_sender_trust_store_type = 'JKS'
  $transport_sender_trust_store_password = 'wso2carbon'

  #------------clustering--------------
  $aws_access_key = 'ACCESS_KEY'
  $aws_secret_key = 'SECRET_KEY'
  $aws_region = 'REGION_NAME'
  $aws_iam_role = 'IAM_ROLE'
  $local_member_host = 'LOCAL-MEMBER-HOST'
  $aws_security_group = 'WSO2SecurityGroup'
  $aws_tag_key = 'cluster'
  $aws_tag_value = 'is'

  # user-mgt.xml
  $admin_username = 'admin'
  $admin_password = 'admin'
}
