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

module TencentCloud
  module Asr
    module V20190614
      # 音频流异步识别任务信息
      class AsyncRecognitionTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Url: 音频流Url
        # @type Url: String

        attr_accessor :TaskId, :Url
        
        def initialize(taskid=nil, url=nil)
          @TaskId = taskid
          @Url = url
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Url = params['Url']
        end
      end

      # 音频流异步识别任务列表
      class AsyncRecognitionTasks < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array

        attr_accessor :Tasks
        
        def initialize(tasks=nil)
          @Tasks = tasks
        end

        def deserialize(params)
          @Tasks = params['Tasks']
        end
      end

      # CloseAsyncRecognitionTask请求参数结构体
      class CloseAsyncRecognitionTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 语音流异步识别任务的唯一标识，在创建任务时会返回
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CloseAsyncRecognitionTask返回参数结构体
      class CloseAsyncRecognitionTaskResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateAsrVocab请求参数结构体
      class CreateAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param Name: 热词表名称，长度在1-255之间
        # @type Name: String
        # @param Description: 热词表描述，长度在0-1000之间
        # @type Description: String
        # @param WordWeights: 词权重数组，包含全部的热词和对应的权重。每个热词的长度不大于10，权重为[1,10]之间整数，数组长度不大于128
        # @type WordWeights: Array
        # @param WordWeightStr: 词权重文件（纯文本文件）的二进制base64编码，以行分隔，每行的格式为word|weight，即以英文符号|为分割，左边为词，右边为权重，如：你好|5。
        # 当用户传此参数（参数长度大于0），即以此参数解析词权重，WordWeights会被忽略
        # @type WordWeightStr: String

        attr_accessor :Name, :Description, :WordWeights, :WordWeightStr
        
        def initialize(name=nil, description=nil, wordweights=nil, wordweightstr=nil)
          @Name = name
          @Description = description
          @WordWeights = wordweights
          @WordWeightStr = wordweightstr
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @WordWeights = params['WordWeights']
          @WordWeightStr = params['WordWeightStr']
        end
      end

      # CreateAsrVocab返回参数结构体
      class CreateAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param VocabId: 词表ID，可用于获取词表信息
        # @type VocabId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabId, :RequestId
        
        def initialize(vocabid=nil, requestid=nil)
          @VocabId = vocabid
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAsyncRecognitionTask请求参数结构体
      class CreateAsyncRecognitionTaskRequest < TencentCloud::Common::AbstractModel
        # @param EngineType: 引擎模型类型。
        # • 16k_zh：16k 中文普通话通用；
        # • 16k_zh_video：16k 音视频领域；
        # • 16k_en：16k 英语；
        # • 16k_ca：16k 粤语；
        # @type EngineType: String
        # @param Url: 语音流地址，支持rtmp、hls、rtsp等流媒体协议，以及各类基于http协议的直播流
        # @type Url: String
        # @param CallbackUrl: 支持HTTP和HTTPS协议，用于接收识别结果，您需要自行搭建公网可调用的服务。回调格式&内容详见：[语音流异步识别回调说明](https://github.com/yunjianfei/qcloud-documents/blob/master/product/%E5%A4%A7%E6%95%B0%E6%8D%AE%E4%B8%8EAI/%E8%AF%AD%E9%9F%B3%E8%AF%86%E5%88%AB/%E8%AF%AD%E9%9F%B3%E8%AF%86%E5%88%AB%20API%202017/%E8%AF%AD%E9%9F%B3%E6%B5%81%E5%BC%82%E6%AD%A5%E8%AF%86%E5%88%AB%E5%9B%9E%E8%B0%83%E8%AF%B4%E6%98%8E.md)
        # @type CallbackUrl: String
        # @param SignToken: 用于生成回调通知中的签名
        # @type SignToken: String
        # @param FilterDirty: 是否过滤脏词（目前支持中文普通话引擎）。0：不过滤脏词；1：过滤脏词；2：将脏词替换为 * 。默认值为 0
        # @type FilterDirty: Integer
        # @param FilterModal: 是否过语气词（目前支持中文普通话引擎）。0：不过滤语气词；1：部分过滤；2：严格过滤 。默认值为 0
        # @type FilterModal: Integer
        # @param FilterPunc: 是否过滤标点符号（目前支持中文普通话引擎）。 0：不过滤，1：过滤句末标点，2：过滤所有标点。默认为0
        # @type FilterPunc: Integer
        # @param ConvertNumMode: 是否进行阿拉伯数字智能转换。0：不转换，直接输出中文数字，1：根据场景智能转换为阿拉伯数字。默认值为1
        # @type ConvertNumMode: Integer
        # @param WordInfo: 是否显示词级别时间戳。0：不显示；1：显示，不包含标点时间戳，2：显示，包含标点时间戳。默认为0
        # @type WordInfo: Integer
        # @param HotwordId: 热词id。用于调用对应的热词表，如果在调用语音识别服务时，不进行单独的热词id设置，自动生效默认热词；如果进行了单独的热词id设置，那么将生效单独设置的热词id。
        # @type HotwordId: String

        attr_accessor :EngineType, :Url, :CallbackUrl, :SignToken, :FilterDirty, :FilterModal, :FilterPunc, :ConvertNumMode, :WordInfo, :HotwordId
        
        def initialize(enginetype=nil, url=nil, callbackurl=nil, signtoken=nil, filterdirty=nil, filtermodal=nil, filterpunc=nil, convertnummode=nil, wordinfo=nil, hotwordid=nil)
          @EngineType = enginetype
          @Url = url
          @CallbackUrl = callbackurl
          @SignToken = signtoken
          @FilterDirty = filterdirty
          @FilterModal = filtermodal
          @FilterPunc = filterpunc
          @ConvertNumMode = convertnummode
          @WordInfo = wordinfo
          @HotwordId = hotwordid
        end

        def deserialize(params)
          @EngineType = params['EngineType']
          @Url = params['Url']
          @CallbackUrl = params['CallbackUrl']
          @SignToken = params['SignToken']
          @FilterDirty = params['FilterDirty']
          @FilterModal = params['FilterModal']
          @FilterPunc = params['FilterPunc']
          @ConvertNumMode = params['ConvertNumMode']
          @WordInfo = params['WordInfo']
          @HotwordId = params['HotwordId']
        end
      end

      # CreateAsyncRecognitionTask返回参数结构体
      class CreateAsyncRecognitionTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 请求返回结果，包含本次的任务ID(TaskId)
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.Task`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Task.new.deserialize(params[Data])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomization请求参数结构体
      class CreateCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelName: 自学习模型名称，需在1-20字符之间
        # @type ModelName: String
        # @param TextUrl: 文本文件的下载地址，服务会从该地址下载文件， 以训练模型，目前仅支持腾讯云cos
        # @type TextUrl: String
        # @param ModelType: 自学习模型类型，填写8k或者16k
        # @type ModelType: String
        # @param TagInfos: 标签信息
        # @type TagInfos: Array

        attr_accessor :ModelName, :TextUrl, :ModelType, :TagInfos
        
        def initialize(modelname=nil, texturl=nil, modeltype=nil, taginfos=nil)
          @ModelName = modelname
          @TextUrl = texturl
          @ModelType = modeltype
          @TagInfos = taginfos
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @TextUrl = params['TextUrl']
          @ModelType = params['ModelType']
          @TagInfos = params['TagInfos']
        end
      end

      # CreateCustomization返回参数结构体
      class CreateCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :RequestId
        
        def initialize(modelid=nil, requestid=nil)
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRecTask请求参数结构体
      class CreateRecTaskRequest < TencentCloud::Common::AbstractModel
        # @param EngineModelType: 引擎模型类型。
        # 电话场景：
        # • 8k_en：电话 8k 英语；
        # • 8k_zh：电话 8k 中文普通话通用；
        # 非电话场景：
        # • 16k_zh：16k 中文普通话通用；
        # • 16k_zh_video：16k 音视频领域；
        # • 16k_en：16k 英语；
        # • 16k_ca：16k 粤语；
        # • 16k_ja：16k 日语；
        # • 16k_wuu-SH：16k 上海话方言；
        # @type EngineModelType: String
        # @param ChannelNum: 语音声道数。1：单声道；2：双声道（仅支持 8k_zh 引擎模型）。
        # @type ChannelNum: Integer
        # @param ResTextFormat: 识别结果返回形式。0： 识别结果文本(含分段时间戳)； 1：词级别粒度的[详细识别结果](https://cloud.tencent.com/document/api/1093/37824#SentenceDetail)(不含标点，含语速值)；2：词级别粒度的详细识别结果（包含标点、语速值）
        # @type ResTextFormat: Integer
        # @param SourceType: 语音数据来源。0：语音 URL；1：语音数据（post body）。
        # @type SourceType: Integer
        # @param SpeakerDiarization: 是否开启说话人分离，0：不开启，1：开启(仅支持8k_zh，16k_zh，16k_zh_video引擎模型，单声道音频)
        # @type SpeakerDiarization: Integer
        # @param SpeakerNumber: 说话人分离人数（需配合开启说话人分离使用），取值范围：0-10，0代表自动分离（目前仅支持≤6个人），1-10代表指定说话人数分离。
        # 注：话者分离目前是beta版本，请根据您的需要谨慎使用
        # @type SpeakerNumber: Integer
        # @param CallbackUrl: 回调 URL，用户自行搭建的用于接收识别结果的服务器地址， 长度小于2048字节。如果用户使用回调方式获取识别结果，需提交该参数；如果用户使用轮询方式获取识别结果，则无需提交该参数。
        # @type CallbackUrl: String
        # @param Url: 语音的URL地址，需要公网可下载。长度小于2048字节，当 SourceType 值为 0 时须填写该字段，为 1 时不需要填写。注意：请确保录音文件时长在5个小时之内，否则可能识别失败。请保证文件的下载速度，否则可能下载失败。
        # @type Url: String
        # @param Data: 语音数据，当SourceType 值为1时必须填写，为0可不写。要base64编码(采用python语言时注意读取文件应该为string而不是byte，以byte格式读取后要decode()。编码后的数据不可带有回车换行符)。音频数据要小于5MB。
        # @type Data: String
        # @param DataLen: 数据长度，非必填（此数据长度为数据未进行base64编码时的数据长度）。
        # @type DataLen: Integer
        # @param HotwordId: 热词id。用于调用对应的热词表，如果在调用语音识别服务时，不进行单独的热词id设置，自动生效默认热词；如果进行了单独的热词id设置，那么将生效单独设置的热词id。
        # @type HotwordId: String
        # @param FilterDirty: 是否过滤脏词（目前支持中文普通话引擎）。0：不过滤脏词；1：过滤脏词；2：将脏词替换为 * 。默认值为 0。
        # @type FilterDirty: Integer
        # @param FilterModal: 是否过语气词（目前支持中文普通话引擎）。0：不过滤语气词；1：部分过滤；2：严格过滤 。默认值为 0。
        # @type FilterModal: Integer
        # @param ConvertNumMode: 是否进行阿拉伯数字智能转换（目前支持中文普通话引擎）。0：不转换，直接输出中文数字，1：根据场景智能转换为阿拉伯数字。默认值为 1。
        # @type ConvertNumMode: Integer
        # @param Extra: 附加参数
        # @type Extra: String
        # @param FilterPunc: 是否过滤标点符号（目前支持中文普通话引擎）。 0：不过滤，1：过滤句末标点，2：过滤所有标点。默认为0。
        # @type FilterPunc: Integer

        attr_accessor :EngineModelType, :ChannelNum, :ResTextFormat, :SourceType, :SpeakerDiarization, :SpeakerNumber, :CallbackUrl, :Url, :Data, :DataLen, :HotwordId, :FilterDirty, :FilterModal, :ConvertNumMode, :Extra, :FilterPunc
        
        def initialize(enginemodeltype=nil, channelnum=nil, restextformat=nil, sourcetype=nil, speakerdiarization=nil, speakernumber=nil, callbackurl=nil, url=nil, data=nil, datalen=nil, hotwordid=nil, filterdirty=nil, filtermodal=nil, convertnummode=nil, extra=nil, filterpunc=nil)
          @EngineModelType = enginemodeltype
          @ChannelNum = channelnum
          @ResTextFormat = restextformat
          @SourceType = sourcetype
          @SpeakerDiarization = speakerdiarization
          @SpeakerNumber = speakernumber
          @CallbackUrl = callbackurl
          @Url = url
          @Data = data
          @DataLen = datalen
          @HotwordId = hotwordid
          @FilterDirty = filterdirty
          @FilterModal = filtermodal
          @ConvertNumMode = convertnummode
          @Extra = extra
          @FilterPunc = filterpunc
        end

        def deserialize(params)
          @EngineModelType = params['EngineModelType']
          @ChannelNum = params['ChannelNum']
          @ResTextFormat = params['ResTextFormat']
          @SourceType = params['SourceType']
          @SpeakerDiarization = params['SpeakerDiarization']
          @SpeakerNumber = params['SpeakerNumber']
          @CallbackUrl = params['CallbackUrl']
          @Url = params['Url']
          @Data = params['Data']
          @DataLen = params['DataLen']
          @HotwordId = params['HotwordId']
          @FilterDirty = params['FilterDirty']
          @FilterModal = params['FilterModal']
          @ConvertNumMode = params['ConvertNumMode']
          @Extra = params['Extra']
          @FilterPunc = params['FilterPunc']
        end
      end

      # CreateRecTask返回参数结构体
      class CreateRecTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 录音文件识别的请求返回结果，包含结果查询需要的TaskId
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.Task`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Task.new.deserialize(params[Data])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAsrVocab请求参数结构体
      class DeleteAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表Id
        # @type VocabId: String

        attr_accessor :VocabId
        
        def initialize(vocabid=nil)
          @VocabId = vocabid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
        end
      end

      # DeleteAsrVocab返回参数结构体
      class DeleteAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteCustomization请求参数结构体
      class DeleteCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 要删除的模型ID
        # @type ModelId: String

        attr_accessor :ModelId
        
        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # DeleteCustomization返回参数结构体
      class DeleteCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeAsyncRecognitionTasks请求参数结构体
      class DescribeAsyncRecognitionTasksRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAsyncRecognitionTasks返回参数结构体
      class DescribeAsyncRecognitionTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.AsyncRecognitionTasks`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AsyncRecognitionTasks.new.deserialize(params[Data])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 从CreateRecTask接口获取的TaskId，用于获取任务状态与结果。
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 录音文件识别的请求返回结果。
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.TaskStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskStatus.new.deserialize(params[Data])
          end
          @RequestId = params['RequestId']
        end
      end

      # DownloadAsrVocab请求参数结构体
      class DownloadAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 词表ID。
        # @type VocabId: String

        attr_accessor :VocabId
        
        def initialize(vocabid=nil)
          @VocabId = vocabid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
        end
      end

      # DownloadAsrVocab返回参数结构体
      class DownloadAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param VocabId: 词表ID。
        # @type VocabId: String
        # @param WordWeightStr: 词表权重文件形式的base64值。
        # @type WordWeightStr: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabId, :WordWeightStr, :RequestId
        
        def initialize(vocabid=nil, wordweightstr=nil, requestid=nil)
          @VocabId = vocabid
          @WordWeightStr = wordweightstr
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @WordWeightStr = params['WordWeightStr']
          @RequestId = params['RequestId']
        end
      end

      # DownloadCustomization请求参数结构体
      class DownloadCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 自学习模型ID
        # @type ModelId: String

        attr_accessor :ModelId
        
        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # DownloadCustomization返回参数结构体
      class DownloadCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId
        
        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # GetAsrVocabList请求参数结构体
      class GetAsrVocabListRequest < TencentCloud::Common::AbstractModel
        # @param TagInfos: 标签信息，格式为“$TagKey : $TagValue ”，中间分隔符为“空格”+“:”+“空格”
        # @type TagInfos: Array
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer

        attr_accessor :TagInfos, :Offset, :Limit
        
        def initialize(taginfos=nil, offset=nil, limit=nil)
          @TagInfos = taginfos
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TagInfos = params['TagInfos']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetAsrVocabList返回参数结构体
      class GetAsrVocabListResponse < TencentCloud::Common::AbstractModel
        # @param VocabList: 热词表列表
        # @type VocabList: Array
        # @param TotalCount: 热词列表总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabList, :TotalCount, :RequestId
        
        def initialize(vocablist=nil, totalcount=nil, requestid=nil)
          @VocabList = vocablist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabList = params['VocabList']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetAsrVocab请求参数结构体
      class GetAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID
        # @type VocabId: String

        attr_accessor :VocabId
        
        def initialize(vocabid=nil)
          @VocabId = vocabid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
        end
      end

      # GetAsrVocab返回参数结构体
      class GetAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param Name: 热词表名称
        # @type Name: String
        # @param Description: 热词表描述
        # @type Description: String
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param WordWeights: 词权重列表
        # @type WordWeights: Array
        # @param CreateTime: 词表创建时间
        # @type CreateTime: String
        # @param UpdateTime: 词表更新时间
        # @type UpdateTime: String
        # @param State: 热词表状态，1为默认状态即在识别时默认加载该热词表进行识别，0为初始状态
        # @type State: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Description, :VocabId, :WordWeights, :CreateTime, :UpdateTime, :State, :RequestId
        
        def initialize(name=nil, description=nil, vocabid=nil, wordweights=nil, createtime=nil, updatetime=nil, state=nil, requestid=nil)
          @Name = name
          @Description = description
          @VocabId = vocabid
          @WordWeights = wordweights
          @CreateTime = createtime
          @UpdateTime = updatetime
          @State = state
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @VocabId = params['VocabId']
          @WordWeights = params['WordWeights']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @State = params['State']
          @RequestId = params['RequestId']
        end
      end

      # GetCustomizationList请求参数结构体
      class GetCustomizationListRequest < TencentCloud::Common::AbstractModel
        # @param TagInfos: 标签信息，格式为“$TagKey : $TagValue ”，中间分隔符为“空格”+“:”+“空格”
        # @type TagInfos: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页offset
        # @type Offset: Integer

        attr_accessor :TagInfos, :Limit, :Offset
        
        def initialize(taginfos=nil, limit=nil, offset=nil)
          @TagInfos = taginfos
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @TagInfos = params['TagInfos']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # GetCustomizationList返回参数结构体
      class GetCustomizationListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 自学习模型数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 自学习模型总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId
        
        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 热词的词和权重
      class HotWord < TencentCloud::Common::AbstractModel
        # @param Word: 热词
        # @type Word: String
        # @param Weight: 权重
        # @type Weight: Integer

        attr_accessor :Word, :Weight
        
        def initialize(word=nil, weight=nil)
          @Word = word
          @Weight = weight
        end

        def deserialize(params)
          @Word = params['Word']
          @Weight = params['Weight']
        end
      end

      # 自学习模型信息
      class Model < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param DictName: 模型文件名称
        # @type DictName: String
        # @param ModelId: 模型Id
        # @type ModelId: String
        # @param ModelType: 模型类型，“8k”或者”16k“
        # @type ModelType: String
        # @param ServiceType: 服务类型
        # @type ServiceType: String
        # @param ModelState: 模型状态，-1下线状态，1上线状态, 0训练中, -2 训练失败
        # @type ModelState: Integer
        # @param AtUpdated: 最后更新时间
        # @type AtUpdated: String
        # @param TagInfos: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagInfos: Array

        attr_accessor :ModelName, :DictName, :ModelId, :ModelType, :ServiceType, :ModelState, :AtUpdated, :TagInfos
        
        def initialize(modelname=nil, dictname=nil, modelid=nil, modeltype=nil, servicetype=nil, modelstate=nil, atupdated=nil, taginfos=nil)
          @ModelName = modelname
          @DictName = dictname
          @ModelId = modelid
          @ModelType = modeltype
          @ServiceType = servicetype
          @ModelState = modelstate
          @AtUpdated = atupdated
          @TagInfos = taginfos
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @DictName = params['DictName']
          @ModelId = params['ModelId']
          @ModelType = params['ModelType']
          @ServiceType = params['ServiceType']
          @ModelState = params['ModelState']
          @AtUpdated = params['AtUpdated']
          @TagInfos = params['TagInfos']
        end
      end

      # ModifyCustomization请求参数结构体
      class ModifyCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 要修改的模型ID
        # @type ModelId: String
        # @param ModelName: 要修改的模型名称，长度需在1-20个字符之间
        # @type ModelName: String
        # @param ModelType: 要修改的模型类型，为8k或者16k
        # @type ModelType: String
        # @param TextUrl: 要修改的模型语料的下载地址，目前仅支持腾讯云cos
        # @type TextUrl: String

        attr_accessor :ModelId, :ModelName, :ModelType, :TextUrl
        
        def initialize(modelid=nil, modelname=nil, modeltype=nil, texturl=nil)
          @ModelId = modelid
          @ModelName = modelname
          @ModelType = modeltype
          @TextUrl = texturl
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @ModelType = params['ModelType']
          @TextUrl = params['TextUrl']
        end
      end

      # ModifyCustomization返回参数结构体
      class ModifyCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomizationState请求参数结构体
      class ModifyCustomizationStateRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 自学习模型ID
        # @type ModelId: String
        # @param ToState: 想要变换的模型状态，-1代表下线，1代表上线
        # @type ToState: Integer

        attr_accessor :ModelId, :ToState
        
        def initialize(modelid=nil, tostate=nil)
          @ModelId = modelid
          @ToState = tostate
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ToState = params['ToState']
        end
      end

      # ModifyCustomizationState返回参数结构体
      class ModifyCustomizationStateResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 自学习模型ID
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :RequestId
        
        def initialize(modelid=nil, requestid=nil)
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # 单句的详细识别结果，包含单个词的时间偏移，一般用于生成字幕的场景。
      class SentenceDetail < TencentCloud::Common::AbstractModel
        # @param FinalSentence: 单句最终识别结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalSentence: String
        # @param SliceSentence: 单句中间识别结果，使用空格拆分为多个词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SliceSentence: String
        # @param StartMs: 单句开始时间（毫秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartMs: Integer
        # @param EndMs: 单句结束时间（毫秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndMs: Integer
        # @param WordsNum: 单句中词个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordsNum: Integer
        # @param Words: 单句中词详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Words: Array
        # @param SpeechSpeed: 单句语速，单位：字数/秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeechSpeed: Float

        attr_accessor :FinalSentence, :SliceSentence, :StartMs, :EndMs, :WordsNum, :Words, :SpeechSpeed
        
        def initialize(finalsentence=nil, slicesentence=nil, startms=nil, endms=nil, wordsnum=nil, words=nil, speechspeed=nil)
          @FinalSentence = finalsentence
          @SliceSentence = slicesentence
          @StartMs = startms
          @EndMs = endms
          @WordsNum = wordsnum
          @Words = words
          @SpeechSpeed = speechspeed
        end

        def deserialize(params)
          @FinalSentence = params['FinalSentence']
          @SliceSentence = params['SliceSentence']
          @StartMs = params['StartMs']
          @EndMs = params['EndMs']
          @WordsNum = params['WordsNum']
          @Words = params['Words']
          @SpeechSpeed = params['SpeechSpeed']
        end
      end

      # SentenceRecognition请求参数结构体
      class SentenceRecognitionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 腾讯云项目 ID，可填 0，总长度不超过 1024 字节。
        # @type ProjectId: Integer
        # @param SubServiceType: 子服务类型。2： 一句话识别。
        # @type SubServiceType: Integer
        # @param EngSerViceType: 引擎模型类型。
        # 电话场景：
        # • 8k_en：电话 8k 英语；
        # • 8k_zh：电话 8k 中文普通话通用；
        # 非电话场景：
        # • 16k_zh：16k 中文普通话通用；
        # • 16k_en：16k 英语；
        # • 16k_ca：16k 粤语；
        # • 16k_ja：16k 日语；
        # •16k_wuu-SH：16k 上海话方言。
        # @type EngSerViceType: String
        # @param SourceType: 语音数据来源。0：语音 URL；1：语音数据（post body）。
        # @type SourceType: Integer
        # @param VoiceFormat: 识别音频的音频格式。mp3、wav。
        # @type VoiceFormat: String
        # @param UsrAudioKey: 用户端对此任务的唯一标识，用户自助生成，用于用户查找识别结果。
        # @type UsrAudioKey: String
        # @param Url: 语音 URL，公网可下载。当 SourceType 值为 0（语音 URL上传） 时须填写该字段，为 1 时不填；URL 的长度大于 0，小于 2048，需进行urlencode编码。音频时间长度要小于60s。
        # @type Url: String
        # @param Data: 语音数据，当SourceType 值为1（本地语音数据上传）时必须填写，当SourceType 值为0（语音 URL上传）可不写。要使用base64编码(采用python语言时注意读取文件应该为string而不是byte，以byte格式读取后要decode()。编码后的数据不可带有回车换行符)。数据长度要小于3MB（Base64后）。
        # @type Data: String
        # @param DataLen: 数据长度，单位为字节。当 SourceType 值为1（本地语音数据上传）时必须填写，当 SourceType 值为0（语音 URL上传）可不写（此数据长度为数据未进行base64编码时的数据长度）。
        # @type DataLen: Integer
        # @param HotwordId: 热词id。用于调用对应的热词表，如果在调用语音识别服务时，不进行单独的热词id设置，自动生效默认热词；如果进行了单独的热词id设置，那么将生效单独设置的热词id。
        # @type HotwordId: String
        # @param FilterDirty: 是否过滤脏词（目前支持中文普通话引擎）。0：不过滤脏词；1：过滤脏词；2：将脏词替换为 * 。
        # @type FilterDirty: Integer
        # @param FilterModal: 是否过语气词（目前支持中文普通话引擎）。0：不过滤语气词；1：部分过滤；2：严格过滤 。
        # @type FilterModal: Integer
        # @param FilterPunc: 是否过滤标点符号（目前支持中文普通话引擎）。 0：不过滤，1：过滤句末标点，2：过滤所有标点。默认为0。
        # @type FilterPunc: Integer
        # @param ConvertNumMode: 是否进行阿拉伯数字智能转换。0：不转换，直接输出中文数字，1：根据场景智能转换为阿拉伯数字。默认值为1
        # @type ConvertNumMode: Integer
        # @param WordInfo: 是否显示词级别时间戳。0：不显示；1：显示，不包含标点时间戳，2：显示，包含标点时间戳。支持引擎8k_zh，16k_zh，16k_en，16k_ca，16k_ja，16k_wuu-SH
        # @type WordInfo: Integer

        attr_accessor :ProjectId, :SubServiceType, :EngSerViceType, :SourceType, :VoiceFormat, :UsrAudioKey, :Url, :Data, :DataLen, :HotwordId, :FilterDirty, :FilterModal, :FilterPunc, :ConvertNumMode, :WordInfo
        
        def initialize(projectid=nil, subservicetype=nil, engservicetype=nil, sourcetype=nil, voiceformat=nil, usraudiokey=nil, url=nil, data=nil, datalen=nil, hotwordid=nil, filterdirty=nil, filtermodal=nil, filterpunc=nil, convertnummode=nil, wordinfo=nil)
          @ProjectId = projectid
          @SubServiceType = subservicetype
          @EngSerViceType = engservicetype
          @SourceType = sourcetype
          @VoiceFormat = voiceformat
          @UsrAudioKey = usraudiokey
          @Url = url
          @Data = data
          @DataLen = datalen
          @HotwordId = hotwordid
          @FilterDirty = filterdirty
          @FilterModal = filtermodal
          @FilterPunc = filterpunc
          @ConvertNumMode = convertnummode
          @WordInfo = wordinfo
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SubServiceType = params['SubServiceType']
          @EngSerViceType = params['EngSerViceType']
          @SourceType = params['SourceType']
          @VoiceFormat = params['VoiceFormat']
          @UsrAudioKey = params['UsrAudioKey']
          @Url = params['Url']
          @Data = params['Data']
          @DataLen = params['DataLen']
          @HotwordId = params['HotwordId']
          @FilterDirty = params['FilterDirty']
          @FilterModal = params['FilterModal']
          @FilterPunc = params['FilterPunc']
          @ConvertNumMode = params['ConvertNumMode']
          @WordInfo = params['WordInfo']
        end
      end

      # SentenceRecognition返回参数结构体
      class SentenceRecognitionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 识别结果。
        # @type Result: String
        # @param AudioDuration: 请求的音频时长，单位为ms
        # @type AudioDuration: Integer
        # @param WordSize: 词时间戳列表的长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordSize: Integer
        # @param WordList: 词时间戳列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :AudioDuration, :WordSize, :WordList, :RequestId
        
        def initialize(result=nil, audioduration=nil, wordsize=nil, wordlist=nil, requestid=nil)
          @Result = result
          @AudioDuration = audioduration
          @WordSize = wordsize
          @WordList = wordlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @AudioDuration = params['AudioDuration']
          @WordSize = params['WordSize']
          @WordList = params['WordList']
          @RequestId = params['RequestId']
        end
      end

      # 一句话识别返回的词时间戳
      class SentenceWord < TencentCloud::Common::AbstractModel
        # @param Word: 词结果
        # @type Word: String
        # @param StartTime: 词在音频中的开始时间
        # @type StartTime: Integer
        # @param EndTime: 词在音频中的结束时间
        # @type EndTime: Integer

        attr_accessor :Word, :StartTime, :EndTime
        
        def initialize(word=nil, starttime=nil, endtime=nil)
          @Word = word
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Word = params['Word']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 识别结果中词文本，以及对应时间偏移
      class SentenceWords < TencentCloud::Common::AbstractModel
        # @param Word: 词文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Word: String
        # @param OffsetStartMs: 在句子中的开始时间偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetStartMs: Integer
        # @param OffsetEndMs: 在句子中的结束时间偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetEndMs: Integer

        attr_accessor :Word, :OffsetStartMs, :OffsetEndMs
        
        def initialize(word=nil, offsetstartms=nil, offsetendms=nil)
          @Word = word
          @OffsetStartMs = offsetstartms
          @OffsetEndMs = offsetendms
        end

        def deserialize(params)
          @Word = params['Word']
          @OffsetStartMs = params['OffsetStartMs']
          @OffsetEndMs = params['OffsetEndMs']
        end
      end

      # SetVocabState请求参数结构体
      class SetVocabStateRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID。
        # @type VocabId: String
        # @param State: 热词表状态，1：设为默认状态；0：设为非默认状态。
        # @type State: Integer

        attr_accessor :VocabId, :State
        
        def initialize(vocabid=nil, state=nil)
          @VocabId = vocabid
          @State = state
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @State = params['State']
        end
      end

      # SetVocabState返回参数结构体
      class SetVocabStateResponse < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabId, :RequestId
        
        def initialize(vocabid=nil, requestid=nil)
          @VocabId = vocabid
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @RequestId = params['RequestId']
        end
      end

      # 录音文件识别、实时语音异步识别请求的返回数据
      class Task < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可通过此ID在轮询接口获取识别状态与结果
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # 获取录音识别结果结果的返回参数
      class TaskStatus < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务标识。
        # @type TaskId: Integer
        # @param Status: 任务状态码，0：任务等待，1：任务执行中，2：任务成功，3：任务失败。
        # @type Status: Integer
        # @param StatusStr: 任务状态，waiting：任务等待，doing：任务执行中，success：任务成功，failed：任务失败。
        # @type StatusStr: String
        # @param Result: 识别结果。
        # @type Result: String
        # @param ErrorMsg: 失败原因说明。
        # @type ErrorMsg: String
        # @param ResultDetail: 识别结果详情，包含每个句子中的词时间偏移，一般用于生成字幕的场景。(录音识别请求中ResTextFormat=1时该字段不为空)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultDetail: Array

        attr_accessor :TaskId, :Status, :StatusStr, :Result, :ErrorMsg, :ResultDetail
        
        def initialize(taskid=nil, status=nil, statusstr=nil, result=nil, errormsg=nil, resultdetail=nil)
          @TaskId = taskid
          @Status = status
          @StatusStr = statusstr
          @Result = result
          @ErrorMsg = errormsg
          @ResultDetail = resultdetail
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @StatusStr = params['StatusStr']
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @ResultDetail = params['ResultDetail']
        end
      end

      # UpdateAsrVocab请求参数结构体
      class UpdateAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param Name: 热词表名称
        # @type Name: String
        # @param WordWeights: 词权重数组，包含全部的热词和对应的权重。每个热词的长度不大于10，权重为[1,10]之间整数，数组长度不大于128
        # @type WordWeights: Array
        # @param WordWeightStr: 词权重文件（纯文本文件）的二进制base64编码，以行分隔，每行的格式为word|weight，即以英文符号|为分割，左边为词，右边为权重，如：你好|5。
        # 当用户传此参数（参数长度大于0），即以此参数解析词权重，WordWeights会被忽略
        # @type WordWeightStr: String
        # @param Description: 热词表描述
        # @type Description: String

        attr_accessor :VocabId, :Name, :WordWeights, :WordWeightStr, :Description
        
        def initialize(vocabid=nil, name=nil, wordweights=nil, wordweightstr=nil, description=nil)
          @VocabId = vocabid
          @Name = name
          @WordWeights = wordweights
          @WordWeightStr = wordweightstr
          @Description = description
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @Name = params['Name']
          @WordWeights = params['WordWeights']
          @WordWeightStr = params['WordWeightStr']
          @Description = params['Description']
        end
      end

      # UpdateAsrVocab返回参数结构体
      class UpdateAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabId, :RequestId
        
        def initialize(vocabid=nil, requestid=nil)
          @VocabId = vocabid
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @RequestId = params['RequestId']
        end
      end

      # 词表内容
      class Vocab < TencentCloud::Common::AbstractModel
        # @param Name: 热词表名称
        # @type Name: String
        # @param Description: 热词表描述
        # @type Description: String
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param WordWeights: 词权重列表
        # @type WordWeights: Array
        # @param CreateTime: 词表创建时间
        # @type CreateTime: String
        # @param UpdateTime: 词表更新时间
        # @type UpdateTime: String
        # @param State: 热词表状态，1为默认状态即在识别时默认加载该热词表进行识别，0为初始状态
        # @type State: Integer
        # @param TagInfos: 标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagInfos: Array

        attr_accessor :Name, :Description, :VocabId, :WordWeights, :CreateTime, :UpdateTime, :State, :TagInfos
        
        def initialize(name=nil, description=nil, vocabid=nil, wordweights=nil, createtime=nil, updatetime=nil, state=nil, taginfos=nil)
          @Name = name
          @Description = description
          @VocabId = vocabid
          @WordWeights = wordweights
          @CreateTime = createtime
          @UpdateTime = updatetime
          @State = state
          @TagInfos = taginfos
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @VocabId = params['VocabId']
          @WordWeights = params['WordWeights']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @State = params['State']
          @TagInfos = params['TagInfos']
        end
      end

    end
  end
end

