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
  module Cr
    module V20180321
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-03-21'
        @@endpoint = 'cr.tencentcloudapi.com'
        @@sdk_version = 'CR_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 提交黑名单后，黑名单中有效期内的号码将停止拨打，适用于到期/逾期提醒、回访场景。

        # @param request: Request instance for ApplyBlackList.
        # @type request: :class:`Tencentcloud::cr::V20180321::ApplyBlackListRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::ApplyBlackListResponse`
        def ApplyBlackList(request)
          body = send_request('ApplyBlackList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyBlackListResponse.new
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

        # 提交机器人黑名单申请

        # @param request: Request instance for ApplyBlackListData.
        # @type request: :class:`Tencentcloud::cr::V20180321::ApplyBlackListDataRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::ApplyBlackListDataResponse`
        def ApplyBlackListData(request)
          body = send_request('ApplyBlackListData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyBlackListDataResponse.new
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

        # 提交信审外呼申请，返回当次请求日期。

        # @param request: Request instance for ApplyCreditAudit.
        # @type request: :class:`Tencentcloud::cr::V20180321::ApplyCreditAuditRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::ApplyCreditAuditResponse`
        def ApplyCreditAudit(request)
          body = send_request('ApplyCreditAudit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyCreditAuditResponse.new
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

        # 更新机器人任务作业状态

        # @param request: Request instance for ChangeBotCallStatus.
        # @type request: :class:`Tencentcloud::cr::V20180321::ChangeBotCallStatusRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::ChangeBotCallStatusResponse`
        def ChangeBotCallStatus(request)
          body = send_request('ChangeBotCallStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeBotCallStatusResponse.new
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

        # 更新机器人任务状态

        # @param request: Request instance for ChangeBotTaskStatus.
        # @type request: :class:`Tencentcloud::cr::V20180321::ChangeBotTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::ChangeBotTaskStatusResponse`
        def ChangeBotTaskStatus(request)
          body = send_request('ChangeBotTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeBotTaskStatusResponse.new
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

        # 创建机器人任务

        # @param request: Request instance for CreateBotTask.
        # @type request: :class:`Tencentcloud::cr::V20180321::CreateBotTaskRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::CreateBotTaskResponse`
        def CreateBotTask(request)
          body = send_request('CreateBotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBotTaskResponse.new
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

        # 查询机器人对话流

        # @param request: Request instance for DescribeBotFlow.
        # @type request: :class:`Tencentcloud::cr::V20180321::DescribeBotFlowRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DescribeBotFlowResponse`
        def DescribeBotFlow(request)
          body = send_request('DescribeBotFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotFlowResponse.new
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

        # 根据信审任务ID和请求日期，获取相关信审结果。

        # @param request: Request instance for DescribeCreditResult.
        # @type request: :class:`Tencentcloud::cr::V20180321::DescribeCreditResultRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DescribeCreditResultResponse`
        def DescribeCreditResult(request)
          body = send_request('DescribeCreditResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCreditResultResponse.new
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

        # 查询机器人文件模板

        # @param request: Request instance for DescribeFileModel.
        # @type request: :class:`Tencentcloud::cr::V20180321::DescribeFileModelRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DescribeFileModelResponse`
        def DescribeFileModel(request)
          body = send_request('DescribeFileModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileModelResponse.new
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

        # 用于获取指定案件的录音地址，次日早上8:00后可查询前日录音。

        # @param request: Request instance for DescribeRecords.
        # @type request: :class:`Tencentcloud::cr::V20180321::DescribeRecordsRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DescribeRecordsResponse`
        def DescribeRecords(request)
          body = send_request('DescribeRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordsResponse.new
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

        # 根据上传文件接口的输出参数DataResId，获取相关上传结果。

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::cr::V20180321::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DescribeTaskStatusResponse`
        def DescribeTaskStatus(request)
          body = send_request('DescribeTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskStatusResponse.new
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

        # 下载任务录音与文本，第二天12点后可使用此接口获取对应的录音与文本

        # @param request: Request instance for DownloadBotRecord.
        # @type request: :class:`Tencentcloud::cr::V20180321::DownloadBotRecordRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DownloadBotRecordResponse`
        def DownloadBotRecord(request)
          body = send_request('DownloadBotRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadBotRecordResponse.new
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

        # 用于获取指定案件的对话文本内容，次日早上8:00后可查询前日对话文本内容。

        # @param request: Request instance for DownloadDialogueText.
        # @type request: :class:`Tencentcloud::cr::V20180321::DownloadDialogueTextRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DownloadDialogueTextResponse`
        def DownloadDialogueText(request)
          body = send_request('DownloadDialogueText', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadDialogueTextResponse.new
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

        # <p>用于获取录音下载链接清单，次日早上8:00后可查询前日录音清单。</p>
        # <p>注意：录音清单中的录音下载链接仅次日20:00之前有效，请及时下载。</p>

        # @param request: Request instance for DownloadRecordList.
        # @type request: :class:`Tencentcloud::cr::V20180321::DownloadRecordListRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DownloadRecordListResponse`
        def DownloadRecordList(request)
          body = send_request('DownloadRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadRecordListResponse.new
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

        # 用于下载结果报表。当日23:00后，可获取当日到期/逾期提醒结果，次日00:30后，可获取昨日回访结果。

        # @param request: Request instance for DownloadReport.
        # @type request: :class:`Tencentcloud::cr::V20180321::DownloadReportRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::DownloadReportResponse`
        def DownloadReport(request)
          body = send_request('DownloadReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadReportResponse.new
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

        # 导出机器人数据

        # @param request: Request instance for ExportBotData.
        # @type request: :class:`Tencentcloud::cr::V20180321::ExportBotDataRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::ExportBotDataResponse`
        def ExportBotData(request)
          body = send_request('ExportBotData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBotDataResponse.new
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

        # 查看黑名单数据列表

        # @param request: Request instance for QueryBlackListData.
        # @type request: :class:`Tencentcloud::cr::V20180321::QueryBlackListDataRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::QueryBlackListDataResponse`
        def QueryBlackListData(request)
          body = send_request('QueryBlackListData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBlackListDataResponse.new
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

        # 查询机器人任务状态列表

        # @param request: Request instance for QueryBotList.
        # @type request: :class:`Tencentcloud::cr::V20180321::QueryBotListRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::QueryBotListResponse`
        def QueryBotList(request)
          body = send_request('QueryBotList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBotListResponse.new
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

        # 机器人任务查询

        # @param request: Request instance for QueryCallList.
        # @type request: :class:`Tencentcloud::cr::V20180321::QueryCallListRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::QueryCallListResponse`
        def QueryCallList(request)
          body = send_request('QueryCallList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCallListResponse.new
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

        # 实时数据查询

        # @param request: Request instance for QueryInstantData.
        # @type request: :class:`Tencentcloud::cr::V20180321::QueryInstantDataRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::QueryInstantDataResponse`
        def QueryInstantData(request)
          body = send_request('QueryInstantData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryInstantDataResponse.new
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

        # 查询产品列表

        # @param request: Request instance for QueryProducts.
        # @type request: :class:`Tencentcloud::cr::V20180321::QueryProductsRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::QueryProductsResponse`
        def QueryProducts(request)
          body = send_request('QueryProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryProductsResponse.new
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

        # 查询录音列表

        # @param request: Request instance for QueryRecordList.
        # @type request: :class:`Tencentcloud::cr::V20180321::QueryRecordListRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::QueryRecordListResponse`
        def QueryRecordList(request)
          body = send_request('QueryRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryRecordListResponse.new
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

        # 更新机器人任务

        # @param request: Request instance for UpdateBotTask.
        # @type request: :class:`Tencentcloud::cr::V20180321::UpdateBotTaskRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::UpdateBotTaskResponse`
        def UpdateBotTask(request)
          body = send_request('UpdateBotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateBotTaskResponse.new
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

        # 上传机器人任务数据

        # @param request: Request instance for UploadBotData.
        # @type request: :class:`Tencentcloud::cr::V20180321::UploadBotDataRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::UploadBotDataResponse`
        def UploadBotData(request)
          body = send_request('UploadBotData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadBotDataResponse.new
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

        # 上传机器人文件

        # @param request: Request instance for UploadBotFile.
        # @type request: :class:`Tencentcloud::cr::V20180321::UploadBotFileRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::UploadBotFileResponse`
        def UploadBotFile(request)
          body = send_request('UploadBotFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadBotFileResponse.new
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

        # 上传文件，接口返回数据任务ID，支持xlsx、xls、csv、zip格式。

        # @param request: Request instance for UploadDataFile.
        # @type request: :class:`Tencentcloud::cr::V20180321::UploadDataFileRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::UploadDataFileResponse`
        def UploadDataFile(request)
            options = {'IsMultipart': True, 'BinaryParams': [u'File']}
          body = send_request('UploadDataFile', request.serialize, options)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadDataFileResponse.new
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

        # 上传Json格式数据，接口返回数据任务ID

        # @param request: Request instance for UploadDataJson.
        # @type request: :class:`Tencentcloud::cr::V20180321::UploadDataJsonRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::UploadDataJsonResponse`
        def UploadDataJson(request)
          body = send_request('UploadDataJson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadDataJsonResponse.new
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

        # 客户通过调用该接口上传需催收文档，格式需为excel格式。接口返回任务ID。

        # @param request: Request instance for UploadFile.
        # @type request: :class:`Tencentcloud::cr::V20180321::UploadFileRequest`
        # @rtype: :class:`Tencentcloud::cr::V20180321::UploadFileResponse`
        def UploadFile(request)
          body = send_request('UploadFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadFileResponse.new
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