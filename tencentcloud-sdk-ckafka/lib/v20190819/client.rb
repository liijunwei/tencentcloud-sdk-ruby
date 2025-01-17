# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'json'

module TencentCloud
  module Ckafka
    module V20190819
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-08-19'
        @@endpoint = 'ckafka.tencentcloudapi.com'
        @@sdk_version = 'CKAFKA_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 添加 ACL 策略

        # @param request: Request instance for CreateAcl.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateAclRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateAclResponse`
        def CreateAcl(request)
          body = send_request('CreateAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实例(预付费包年包月)

        # @param request: Request instance for CreateInstancePre.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateInstancePreRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateInstancePreResponse`
        def CreateInstancePre(request)
          body = send_request('CreateInstancePre', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstancePreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于增加主题中的分区

        # @param request: Request instance for CreatePartition.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreatePartitionRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreatePartitionResponse`
        def CreatePartition(request)
          body = send_request('CreatePartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePartitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建ckafka主题

        # @param request: Request instance for CreateTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateTopicResponse`
        def CreateTopic(request)
          body = send_request('CreateTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建主题ip白名单

        # @param request: Request instance for CreateTopicIpWhiteList.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateTopicIpWhiteListRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateTopicIpWhiteListResponse`
        def CreateTopicIpWhiteList(request)
          body = send_request('CreateTopicIpWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicIpWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateUserResponse`
        def CreateUser(request)
          body = send_request('CreateUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除ACL

        # @param request: Request instance for DeleteAcl.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteAclRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteAclResponse`
        def DeleteAcl(request)
          body = send_request('DeleteAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除ACL规则

        # @param request: Request instance for DeleteAclRule.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteAclRuleRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteAclRuleResponse`
        def DeleteAclRule(request)
          body = send_request('DeleteAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除ckafka主题

        # @param request: Request instance for DeleteTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteTopicResponse`
        def DeleteTopic(request)
          body = send_request('DeleteTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主题IP白名单

        # @param request: Request instance for DeleteTopicIpWhiteList.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteTopicIpWhiteListRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteTopicIpWhiteListResponse`
        def DeleteTopicIpWhiteList(request)
          body = send_request('DeleteTopicIpWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicIpWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户

        # @param request: Request instance for DeleteUser.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteUserResponse`
        def DeleteUser(request)
          body = send_request('DeleteUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 枚举ACL

        # @param request: Request instance for DescribeACL.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeACLRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeACLResponse`
        def DescribeACL(request)
          body = send_request('DescribeACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户列表

        # @param request: Request instance for DescribeAppInfo.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeAppInfoRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeAppInfoResponse`
        def DescribeAppInfo(request)
          body = send_request('DescribeAppInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查看ckafka的可用区列表

        # @param request: Request instance for DescribeCkafkaZone.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeCkafkaZoneRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeCkafkaZoneResponse`
        def DescribeCkafkaZone(request)
          body = send_request('DescribeCkafkaZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCkafkaZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费分组信息

        # @param request: Request instance for DescribeConsumerGroup.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeConsumerGroupResponse`
        def DescribeConsumerGroup(request)
          body = send_request('DescribeConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 枚举消费分组(精简版)

        # @param request: Request instance for DescribeGroup.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupResponse`
        def DescribeGroup(request)
          body = send_request('DescribeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取消费分组信息

        # @param request: Request instance for DescribeGroupInfo.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupInfoResponse`
        def DescribeGroupInfo(request)
          body = send_request('DescribeGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取消费分组offset

        # @param request: Request instance for DescribeGroupOffsets.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupOffsetsRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupOffsetsResponse`
        def DescribeGroupOffsets(request)
          body = send_request('DescribeGroupOffsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupOffsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例属性

        # @param request: Request instance for DescribeInstanceAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeInstanceAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeInstanceAttributesResponse`
        def DescribeInstanceAttributes(request)
          body = send_request('DescribeInstanceAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstance）用于在用户账户下获取消息队列 CKafka 实例列表

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户账户下获取实例列表详情

        # @param request: Request instance for DescribeInstancesDetail.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeInstancesDetailRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeInstancesDetailResponse`
        def DescribeInstancesDetail(request)
          body = send_request('DescribeInstancesDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 枚举地域,只支持广州地域

        # @param request: Request instance for DescribeRegion.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeRegionRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeRegionResponse`
        def DescribeRegion(request)
          body = send_request('DescribeRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看路由信息

        # @param request: Request instance for DescribeRoute.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeRouteRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeRouteResponse`
        def DescribeRoute(request)
          body = send_request('DescribeRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口请求域名：https://ckafka.tencentcloudapi.com
        # 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表

        # @param request: Request instance for DescribeTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicResponse`
        def DescribeTopic(request)
          body = send_request('DescribeTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主题属性

        # @param request: Request instance for DescribeTopicAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicAttributesResponse`
        def DescribeTopicAttributes(request)
          body = send_request('DescribeTopicAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主题列表详情（仅控制台调用）

        # @param request: Request instance for DescribeTopicDetail.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicDetailRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicDetailResponse`
        def DescribeTopicDetail(request)
          body = send_request('DescribeTopicDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户信息

        # @param request: Request instance for DescribeUser.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeUserRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeUserResponse`
        def DescribeUser(request)
          body = send_request('DescribeUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置Groups 消费分组offset

        # @param request: Request instance for ModifyGroupOffsets.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyGroupOffsetsRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyGroupOffsetsResponse`
        def ModifyGroupOffsets(request)
          body = send_request('ModifyGroupOffsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGroupOffsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置实例属性

        # @param request: Request instance for ModifyInstanceAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyInstanceAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyInstanceAttributesResponse`
        def ModifyInstanceAttributes(request)
          body = send_request('ModifyInstanceAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改密码

        # @param request: Request instance for ModifyPassword.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyPasswordRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyPasswordResponse`
        def ModifyPassword(request)
          body = send_request('ModifyPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改主题属性。

        # @param request: Request instance for ModifyTopicAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyTopicAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyTopicAttributesResponse`
        def ModifyTopicAttributes(request)
          body = send_request('ModifyTopicAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTopicAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end