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
  module Iotexplorer
    module V20190423
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-04-23'
        @@endpoint = 'iotexplorer.tencentcloudapi.com'
        @@sdk_version = 'IOTEXPLORER_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 提供给用户异步调用设备行为的能力

        # @param request: Request instance for CallDeviceActionAsync.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CallDeviceActionAsyncRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CallDeviceActionAsyncResponse`
        def CallDeviceActionAsync(request)
          body = send_request('CallDeviceActionAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CallDeviceActionAsyncResponse.new
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

        # 为用户提供同步调用设备行为的能力。

        # @param request: Request instance for CallDeviceActionSync.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CallDeviceActionSyncRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CallDeviceActionSyncResponse`
        def CallDeviceActionSync(request)
          body = send_request('CallDeviceActionSync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CallDeviceActionSyncResponse.new
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

        # 根据设备产品ID、设备名称，设置控制设备的属性数据。

        # @param request: Request instance for ControlDeviceData.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ControlDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ControlDeviceDataResponse`
        def ControlDeviceData(request)
          body = send_request('ControlDeviceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlDeviceDataResponse.new
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

        # 创建设备

        # @param request: Request instance for CreateDevice.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateDeviceResponse`
        def CreateDevice(request)
          body = send_request('CreateDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeviceResponse.new
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

        # 创建 LoRa 自定义频点

        # @param request: Request instance for CreateLoRaFrequency.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateLoRaFrequencyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateLoRaFrequencyResponse`
        def CreateLoRaFrequency(request)
          body = send_request('CreateLoRaFrequency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoRaFrequencyResponse.new
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

        # 创建新 LoRa 网关设备接口

        # @param request: Request instance for CreateLoRaGateway.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateLoRaGatewayRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateLoRaGatewayResponse`
        def CreateLoRaGateway(request)
          body = send_request('CreateLoRaGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoRaGatewayResponse.new
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

        # 为用户提供新建项目的能力，用于集中管理产品和应用。

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateProjectResponse`
        def CreateProject(request)
          body = send_request('CreateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProjectResponse.new
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

        # 为用户提供新建产品的能力，用于管理用户的设备

        # @param request: Request instance for CreateStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateStudioProductResponse`
        def CreateStudioProduct(request)
          body = send_request('CreateStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStudioProductResponse.new
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

        # 创建规则

        # @param request: Request instance for CreateTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateTopicRuleResponse`
        def CreateTopicRule(request)
          body = send_request('CreateTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicRuleResponse.new
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

        # 删除设备

        # @param request: Request instance for DeleteDevice.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteDeviceResponse`
        def DeleteDevice(request)
          body = send_request('DeleteDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceResponse.new
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

        # 提供删除LoRa自定义频点的能力

        # @param request: Request instance for DeleteLoRaFrequency.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteLoRaFrequencyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteLoRaFrequencyResponse`
        def DeleteLoRaFrequency(request)
          body = send_request('DeleteLoRaFrequency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoRaFrequencyResponse.new
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

        # 删除  LoRa 网关的接口

        # @param request: Request instance for DeleteLoRaGateway.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteLoRaGatewayRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteLoRaGatewayResponse`
        def DeleteLoRaGateway(request)
          body = send_request('DeleteLoRaGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoRaGatewayResponse.new
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

        # 提供删除某个项目的能力

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteProjectResponse`
        def DeleteProject(request)
          body = send_request('DeleteProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectResponse.new
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

        # 提供删除某个项目下产品的能力

        # @param request: Request instance for DeleteStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteStudioProductResponse`
        def DeleteStudioProduct(request)
          body = send_request('DeleteStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStudioProductResponse.new
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

        # 删除规则

        # @param request: Request instance for DeleteTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteTopicRuleResponse`
        def DeleteTopicRule(request)
          body = send_request('DeleteTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicRuleResponse.new
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

        # 用于查看某个设备的详细信息

        # @param request: Request instance for DescribeDevice.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceResponse`
        def DescribeDevice(request)
          body = send_request('DescribeDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceResponse.new
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

        # 根据设备产品ID、设备名称，获取设备上报的属性数据。

        # @param request: Request instance for DescribeDeviceData.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceDataResponse`
        def DescribeDeviceData(request)
          body = send_request('DescribeDeviceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceDataResponse.new
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

        # 获取设备在指定时间范围内上报的历史数据。

        # @param request: Request instance for DescribeDeviceDataHistory.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceDataHistoryRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceDataHistoryResponse`
        def DescribeDeviceDataHistory(request)
          body = send_request('DescribeDeviceDataHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceDataHistoryResponse.new
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

        # 查询固件升级任务列表

        # @param request: Request instance for DescribeFirmwareTask.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeFirmwareTaskResponse`
        def DescribeFirmwareTask(request)
          body = send_request('DescribeFirmwareTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirmwareTaskResponse.new
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

        # 提供查询LoRa自定义频点详情的能力

        # @param request: Request instance for DescribeLoRaFrequency.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeLoRaFrequencyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeLoRaFrequencyResponse`
        def DescribeLoRaFrequency(request)
          body = send_request('DescribeLoRaFrequency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoRaFrequencyResponse.new
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

        # 查询产品配置的数据模板信息

        # @param request: Request instance for DescribeModelDefinition.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeModelDefinitionRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeModelDefinitionResponse`
        def DescribeModelDefinition(request)
          body = send_request('DescribeModelDefinition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelDefinitionResponse.new
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

        # 查询项目详情

        # @param request: Request instance for DescribeProject.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeProjectRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeProjectResponse`
        def DescribeProject(request)
          body = send_request('DescribeProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectResponse.new
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

        # 提供查看产品详细信息的能力，包括产品的ID、数据协议、认证类型等重要参数

        # @param request: Request instance for DescribeStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeStudioProductResponse`
        def DescribeStudioProduct(request)
          body = send_request('DescribeStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStudioProductResponse.new
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

        # 获取规则信息

        # @param request: Request instance for DescribeTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeTopicRuleResponse`
        def DescribeTopicRule(request)
          body = send_request('DescribeTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicRuleResponse.new
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

        # 禁用规则

        # @param request: Request instance for DisableTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DisableTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DisableTopicRuleResponse`
        def DisableTopicRule(request)
          body = send_request('DisableTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableTopicRuleResponse.new
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

        # 启用规则

        # @param request: Request instance for EnableTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::EnableTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::EnableTopicRuleResponse`
        def EnableTopicRule(request)
          body = send_request('EnableTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableTopicRuleResponse.new
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

        # 本接口（GetCOSURL）用于获取固件存储在COS的URL

        # @param request: Request instance for GetCOSURL.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetCOSURLRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetCOSURLResponse`
        def GetCOSURL(request)
          body = send_request('GetCOSURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCOSURLResponse.new
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

        # 用于查询某个产品下的设备列表

        # @param request: Request instance for GetDeviceList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetDeviceListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetDeviceListResponse`
        def GetDeviceList(request)
          body = send_request('GetDeviceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceListResponse.new
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

        # 获取 LoRa 网关列表接口

        # @param request: Request instance for GetLoRaGatewayList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetLoRaGatewayListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetLoRaGatewayListResponse`
        def GetLoRaGatewayList(request)
          body = send_request('GetLoRaGatewayList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLoRaGatewayListResponse.new
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

        # 提供查询用户所创建的项目列表查询功能。

        # @param request: Request instance for GetProjectList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetProjectListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetProjectListResponse`
        def GetProjectList(request)
          body = send_request('GetProjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetProjectListResponse.new
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

        # 提供查询某个项目下所有产品信息的能力。

        # @param request: Request instance for GetStudioProductList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetStudioProductListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetStudioProductListResponse`
        def GetStudioProductList(request)
          body = send_request('GetStudioProductList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetStudioProductListResponse.new
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

        # 获取规则列表

        # @param request: Request instance for GetTopicRuleList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetTopicRuleListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetTopicRuleListResponse`
        def GetTopicRuleList(request)
          body = send_request('GetTopicRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTopicRuleListResponse.new
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

        # 获取设备的历史事件

        # @param request: Request instance for ListEventHistory.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ListEventHistoryRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ListEventHistoryResponse`
        def ListEventHistory(request)
          body = send_request('ListEventHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEventHistoryResponse.new
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

        # 本接口（ListFirmwares）用于获取固件列表

        # @param request: Request instance for ListFirmwares.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ListFirmwaresRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ListFirmwaresResponse`
        def ListFirmwares(request)
          body = send_request('ListFirmwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListFirmwaresResponse.new
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

        # 修改LoRa自定义频点

        # @param request: Request instance for ModifyLoRaFrequency.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyLoRaFrequencyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyLoRaFrequencyResponse`
        def ModifyLoRaFrequency(request)
          body = send_request('ModifyLoRaFrequency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoRaFrequencyResponse.new
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

        # 修改 LoRa 网关信息

        # @param request: Request instance for ModifyLoRaGateway.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyLoRaGatewayRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyLoRaGatewayResponse`
        def ModifyLoRaGateway(request)
          body = send_request('ModifyLoRaGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoRaGatewayResponse.new
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

        # 提供修改产品的数据模板的能力

        # @param request: Request instance for ModifyModelDefinition.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyModelDefinitionRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyModelDefinitionResponse`
        def ModifyModelDefinition(request)
          body = send_request('ModifyModelDefinition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModelDefinitionResponse.new
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

        # 修改项目

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyProjectResponse`
        def ModifyProject(request)
          body = send_request('ModifyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectResponse.new
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

        # 提供修改产品的名称和描述等信息的能力，对于已发布产品不允许进行修改。

        # @param request: Request instance for ModifyStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyStudioProductResponse`
        def ModifyStudioProduct(request)
          body = send_request('ModifyStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStudioProductResponse.new
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

        # 修改规则

        # @param request: Request instance for ModifyTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyTopicRuleResponse`
        def ModifyTopicRule(request)
          body = send_request('ModifyTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTopicRuleResponse.new
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

        # 本接口（PublishMessage）用于使用自定义透传协议进行设备远控

        # @param request: Request instance for PublishMessage.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::PublishMessageRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::PublishMessageResponse`
        def PublishMessage(request)
          body = send_request('PublishMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishMessageResponse.new
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

        # 产品开发完成并测试通过后，通过发布产品将产品设置为发布状态

        # @param request: Request instance for ReleaseStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ReleaseStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ReleaseStudioProductResponse`
        def ReleaseStudioProduct(request)
          body = send_request('ReleaseStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseStudioProductResponse.new
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

        # 提供根据产品名称查找产品的能力

        # @param request: Request instance for SearchStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::SearchStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::SearchStudioProductResponse`
        def SearchStudioProduct(request)
          body = send_request('SearchStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchStudioProductResponse.new
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

        # 搜索规则

        # @param request: Request instance for SearchTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::SearchTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::SearchTopicRuleResponse`
        def SearchTopicRule(request)
          body = send_request('SearchTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchTopicRuleResponse.new
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

        # 本接口（UpdateFirmware）用于对指定设备发起固件升级请求

        # @param request: Request instance for UpdateFirmware.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::UpdateFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::UpdateFirmwareResponse`
        def UpdateFirmware(request)
          body = send_request('UpdateFirmware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFirmwareResponse.new
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

        # 本接口（UploadFirmware）用于上传设备固件至平台

        # @param request: Request instance for UploadFirmware.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::UploadFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::UploadFirmwareResponse`
        def UploadFirmware(request)
          body = send_request('UploadFirmware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadFirmwareResponse.new
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