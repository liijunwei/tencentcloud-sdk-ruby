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
  module Trtc
    module V20190722
      # 造成异常体验可能的异常事件类型
      class AbnormalEvent < TencentCloud::Common::AbstractModel
        # @param AbnormalEventId: 异常事件ID，具体值查看附录：异常体验ID映射表：https://cloud.tencent.com/document/product/647/44916
        # @type AbnormalEventId: Integer
        # @param PeerId: 远端用户ID,""：表示异常事件不是由远端用户产生
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerId: String

        attr_accessor :AbnormalEventId, :PeerId
        
        def initialize(abnormaleventid=nil, peerid=nil)
          @AbnormalEventId = abnormaleventid
          @PeerId = peerid
        end

        def deserialize(params)
          @AbnormalEventId = params['AbnormalEventId']
          @PeerId = params['PeerId']
        end
      end

      # 用户的异常体验及可能的原因
      class AbnormalExperience < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ExperienceId: 异常体验ID
        # @type ExperienceId: Integer
        # @param RoomId: 字符串房间号
        # @type RoomId: String
        # @param AbnormalEventList: 异常事件数组
        # @type AbnormalEventList: Array
        # @param EventTime: 异常事件的上报时间
        # @type EventTime: Integer

        attr_accessor :UserId, :ExperienceId, :RoomId, :AbnormalEventList, :EventTime
        
        def initialize(userid=nil, experienceid=nil, roomid=nil, abnormaleventlist=nil, eventtime=nil)
          @UserId = userid
          @ExperienceId = experienceid
          @RoomId = roomid
          @AbnormalEventList = abnormaleventlist
          @EventTime = eventtime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @ExperienceId = params['ExperienceId']
          @RoomId = params['RoomId']
          @AbnormalEventList = params['AbnormalEventList']
          @EventTime = params['EventTime']
        end
      end

      # CreateTroubleInfo请求参数结构体
      class CreateTroubleInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的ID
        # @type SdkAppId: String
        # @param RoomId: 房间ID
        # @type RoomId: String
        # @param TeacherUserId: 老师用户ID
        # @type TeacherUserId: String
        # @param StudentUserId: 学生用户ID
        # @type StudentUserId: String
        # @param TroubleUserId: 体验异常端（老师或学生）的用户 ID。
        # @type TroubleUserId: String
        # @param TroubleType: 异常类型。
        # 1. 仅视频异常
        # 2. 仅声音异常
        # 3. 音视频都异常
        # 5. 进房异常
        # 4. 切课
        # 6. 求助
        # 7. 问题反馈
        # 8. 投诉
        # @type TroubleType: Integer
        # @param TroubleTime: 异常发生的UNIX 时间戳，单位为秒。
        # @type TroubleTime: Integer
        # @param TroubleMsg: 异常详情
        # @type TroubleMsg: String

        attr_accessor :SdkAppId, :RoomId, :TeacherUserId, :StudentUserId, :TroubleUserId, :TroubleType, :TroubleTime, :TroubleMsg
        
        def initialize(sdkappid=nil, roomid=nil, teacheruserid=nil, studentuserid=nil, troubleuserid=nil, troubletype=nil, troubletime=nil, troublemsg=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @TeacherUserId = teacheruserid
          @StudentUserId = studentuserid
          @TroubleUserId = troubleuserid
          @TroubleType = troubletype
          @TroubleTime = troubletime
          @TroubleMsg = troublemsg
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @TeacherUserId = params['TeacherUserId']
          @StudentUserId = params['StudentUserId']
          @TroubleUserId = params['TroubleUserId']
          @TroubleType = params['TroubleType']
          @TroubleTime = params['TroubleTime']
          @TroubleMsg = params['TroubleMsg']
        end
      end

      # CreateTroubleInfo返回参数结构体
      class CreateTroubleInfoResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAbnormalEvent请求参数结构体
      class DescribeAbnormalEventRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SDKAppID，查询SDKAppID下任意20条异常体验事件（可能不同房间）
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间
        # @type EndTime: Integer
        # @param RoomId: 房间号，查询房间内任意20条以内异常体验事件
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId
        
        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeAbnormalEvent返回参数结构体
      class DescribeAbnormalEventResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的数据总条数
        # @type Total: Integer
        # @param AbnormalExperienceList: 异常体验列表
        # @type AbnormalExperienceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AbnormalExperienceList, :RequestId
        
        def initialize(total=nil, abnormalexperiencelist=nil, requestid=nil)
          @Total = total
          @AbnormalExperienceList = abnormalexperiencelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @AbnormalExperienceList = params['AbnormalExperienceList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallDetail请求参数结构体
      class DescribeCallDetailRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： sdkappid_roomgString（房间号_createTime（房间创建时间，unix时间戳，单位为s）例：1400353843_218695_1590065777。通过 DescribeRoomInformation（查询房间列表）接口获取（链接：https://cloud.tencent.com/document/product/647/44050）
        # @type CommId: String
        # @param StartTime: 查询开始时间，5天内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户sdkappid（1400188366）
        # @type SdkAppId: String
        # @param UserIds: 需查询的用户数组，不填默认返回6个用户,最多可填6个用户
        # @type UserIds: Array
        # @param DataType: 需查询的指标，不填则只返回用户列表，填all则返回所有指标。
        # appCpu：APP CPU使用率；
        # sysCpu：系统 CPU使用率；
        # aBit：上/下行音频码率；
        # aBlock：音频卡顿时长；
        # bigvBit：上/下行视频码率；
        # bigvCapFps：视频采集帧率；
        # bigvEncFps：视频发送帧率；
        # bigvDecFps：渲染帧率；
        # bigvBlock：视频卡顿时长；
        # aLoss：上/下行音频丢包；
        # bigvLoss：上/下行视频丢包；
        # bigvWidth：上/下行分辨率宽；
        # bigvHeight：上/下行分辨率高
        # @type DataType: Array

        attr_accessor :CommId, :StartTime, :EndTime, :SdkAppId, :UserIds, :DataType
        
        def initialize(commid=nil, starttime=nil, endtime=nil, sdkappid=nil, userids=nil, datatype=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @UserIds = userids
          @DataType = datatype
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @UserIds = params['UserIds']
          @DataType = params['DataType']
        end
      end

      # DescribeCallDetail返回参数结构体
      class DescribeCallDetailResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的用户总条数
        # @type Total: Integer
        # @param UserList: 用户信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array
        # @param Data: 质量数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :UserList, :Data, :RequestId
        
        def initialize(total=nil, userlist=nil, data=nil, requestid=nil)
          @Total = total
          @UserList = userlist
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @UserList = params['UserList']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDetailEvent请求参数结构体
      class DescribeDetailEventRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： sdkappid_roomgString（房间号_createTime（房间创建时间，unix时间戳，单位s）。通过 DescribeRoomInformation（查询房间列表）接口获取。（链接：https://cloud.tencent.com/document/product/647/44050）
        # @type CommId: String
        # @param StartTime: 查询开始时间，5天内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param UserId: 用户id
        # @type UserId: String
        # @param RoomId: 房间号
        # @type RoomId: String

        attr_accessor :CommId, :StartTime, :EndTime, :UserId, :RoomId
        
        def initialize(commid=nil, starttime=nil, endtime=nil, userid=nil, roomid=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @UserId = userid
          @RoomId = roomid
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserId = params['UserId']
          @RoomId = params['RoomId']
        end
      end

      # DescribeDetailEvent返回参数结构体
      class DescribeDetailEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的事件列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHistoryScale请求参数结构体
      class DescribeHistoryScaleRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，5天内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer

        attr_accessor :SdkAppId, :StartTime, :EndTime
        
        def initialize(sdkappid=nil, starttime=nil, endtime=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeHistoryScale返回参数结构体
      class DescribeHistoryScaleResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的数据条数
        # @type Total: Integer
        # @param ScaleList: 返回的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ScaleList, :RequestId
        
        def initialize(total=nil, scalelist=nil, requestid=nil)
          @Total = total
          @ScaleList = scalelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @ScaleList = params['ScaleList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealtimeNetwork请求参数结构体
      class DescribeRealtimeNetworkRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，24小时内，本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param DataType: 需查询的数据类型
        # sendLossRateRaw：上行丢包率
        # recvLossRateRaw：下行丢包率
        # @type DataType: Array

        attr_accessor :StartTime, :EndTime, :SdkAppId, :DataType
        
        def initialize(starttime=nil, endtime=nil, sdkappid=nil, datatype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @DataType = datatype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @DataType = params['DataType']
        end
      end

      # DescribeRealtimeNetwork返回参数结构体
      class DescribeRealtimeNetworkResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询返回的数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealtimeQuality请求参数结构体
      class DescribeRealtimeQualityRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，24小时内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param DataType: 查询的数据类型
        # enterTotalSuccPercent：进房成功率
        # fistFreamInSecRate：首帧秒开率
        # blockPercent：视频卡顿率
        # audioBlockPercent：音频卡顿率
        # @type DataType: Array

        attr_accessor :StartTime, :EndTime, :SdkAppId, :DataType
        
        def initialize(starttime=nil, endtime=nil, sdkappid=nil, datatype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @DataType = datatype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @DataType = params['DataType']
        end
      end

      # DescribeRealtimeQuality返回参数结构体
      class DescribeRealtimeQualityResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的数据类型
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealtimeScale请求参数结构体
      class DescribeRealtimeScaleRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，24小时内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param DataType: 查询的数据类型
        # UserNum：通话人数；
        # RoomNum：房间数
        # @type DataType: Array

        attr_accessor :StartTime, :EndTime, :SdkAppId, :DataType
        
        def initialize(starttime=nil, endtime=nil, sdkappid=nil, datatype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @DataType = datatype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @DataType = params['DataType']
        end
      end

      # DescribeRealtimeScale返回参数结构体
      class DescribeRealtimeScaleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的数据数组
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomInformation请求参数结构体
      class DescribeRoomInformationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，5天内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param RoomId: 数字房间号
        # @type RoomId: String
        # @param PageNumber: 分页index（不填默认只返回10个）
        # @type PageNumber: String
        # @param PageSize: 分页大小（不填默认返回10个,最多不超过100条）
        # @type PageSize: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId, :PageNumber, :PageSize
        
        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil, pagenumber=nil, pagesize=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeRoomInformation返回参数结构体
      class DescribeRoomInformationResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的数据总条数
        # @type Total: Integer
        # @param RoomList: 房间信息列表
        # @type RoomList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RoomList, :RequestId
        
        def initialize(total=nil, roomlist=nil, requestid=nil)
          @Total = total
          @RoomList = roomlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @RoomList = params['RoomList']
          @RequestId = params['RequestId']
        end
      end

      # DismissRoom请求参数结构体
      class DismissRoomRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer

        attr_accessor :SdkAppId, :RoomId
        
        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # DismissRoom返回参数结构体
      class DismissRoomResponse < TencentCloud::Common::AbstractModel
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

      # MCU混流输出流编码参数
      class EncodeParams < TencentCloud::Common::AbstractModel
        # @param AudioSampleRate: 混流-输出流音频采样率。取值为[48000, 44100, 32000,24000, 22050, 16000, 12000, 11025, 8000]。
        # @type AudioSampleRate: Integer
        # @param AudioBitrate: 混流-输出流音频码率。取值范围[8,500]，单位为Kbps。
        # @type AudioBitrate: Integer
        # @param AudioChannels: 混流-输出流音频声道数，取值范围[1,2]。
        # @type AudioChannels: Integer
        # @param VideoWidth: 混流-输出流宽，音视频输出时必填。取值范围[0,1920]，单位为像素值。
        # @type VideoWidth: Integer
        # @param VideoHeight: 混流-输出流高，音视频输出时必填。取值范围[0,1080]，单位为像素值。
        # @type VideoHeight: Integer
        # @param VideoBitrate: 混流-输出流码率，音视频输出时必填。取值范围[1,10000]，单位为Kbps。
        # @type VideoBitrate: Integer
        # @param VideoFramerate: 混流-输出流帧率，音视频输出时必填。取值为[6,12,15,24,30,48,60]，不在上述帧率值内系统会自动调整。
        # @type VideoFramerate: Integer
        # @param VideoGop: 混流-输出流gop，音视频输出时必填。取值范围[1,5]，单位为秒。
        # @type VideoGop: Integer
        # @param BackgroundColor: 混流-输出流背景色。
        # @type BackgroundColor: Integer
        # @param BackgroundImageId: 混流-输出流背景图片，取值为实时音视频控制台上传的图片ID。
        # @type BackgroundImageId: Integer

        attr_accessor :AudioSampleRate, :AudioBitrate, :AudioChannels, :VideoWidth, :VideoHeight, :VideoBitrate, :VideoFramerate, :VideoGop, :BackgroundColor, :BackgroundImageId
        
        def initialize(audiosamplerate=nil, audiobitrate=nil, audiochannels=nil, videowidth=nil, videoheight=nil, videobitrate=nil, videoframerate=nil, videogop=nil, backgroundcolor=nil, backgroundimageid=nil)
          @AudioSampleRate = audiosamplerate
          @AudioBitrate = audiobitrate
          @AudioChannels = audiochannels
          @VideoWidth = videowidth
          @VideoHeight = videoheight
          @VideoBitrate = videobitrate
          @VideoFramerate = videoframerate
          @VideoGop = videogop
          @BackgroundColor = backgroundcolor
          @BackgroundImageId = backgroundimageid
        end

        def deserialize(params)
          @AudioSampleRate = params['AudioSampleRate']
          @AudioBitrate = params['AudioBitrate']
          @AudioChannels = params['AudioChannels']
          @VideoWidth = params['VideoWidth']
          @VideoHeight = params['VideoHeight']
          @VideoBitrate = params['VideoBitrate']
          @VideoFramerate = params['VideoFramerate']
          @VideoGop = params['VideoGop']
          @BackgroundColor = params['BackgroundColor']
          @BackgroundImageId = params['BackgroundImageId']
        end
      end

      # sdk或webrtc的事件列表。
      class EventList < TencentCloud::Common::AbstractModel
        # @param Content: 数据内容
        # @type Content: Array
        # @param PeerId: 发送端的userId
        # @type PeerId: String

        attr_accessor :Content, :PeerId
        
        def initialize(content=nil, peerid=nil)
          @Content = content
          @PeerId = peerid
        end

        def deserialize(params)
          @Content = params['Content']
          @PeerId = params['PeerId']
        end
      end

      # 事件信息，包括，事件时间戳，事件ID,
      class EventMessage < TencentCloud::Common::AbstractModel
        # @param Type: 视频流类型：
        # 0：与视频无关的事件；
        # 2：视频为大画面；
        # 3：视频为小画面；
        # 7：视频为旁路画面；
        # @type Type: Integer
        # @param Time: 事件上报的时间戳，unix时间（1589891188801ms)
        # @type Time: Integer
        # @param EventId: 事件Id：分为sdk的事件和webrtc的事件，详情见：附录/事件 ID 映射表：https://cloud.tencent.com/document/product/647/44916
        # @type EventId: Integer
        # @param ParamOne: 事件的第一个参数，如视频分辨率宽
        # @type ParamOne: Integer
        # @param ParamTwo: 事件的第二个参数，如视频分辨率高
        # @type ParamTwo: Integer

        attr_accessor :Type, :Time, :EventId, :ParamOne, :ParamTwo
        
        def initialize(type=nil, time=nil, eventid=nil, paramone=nil, paramtwo=nil)
          @Type = type
          @Time = time
          @EventId = eventid
          @ParamOne = paramone
          @ParamTwo = paramtwo
        end

        def deserialize(params)
          @Type = params['Type']
          @Time = params['Time']
          @EventId = params['EventId']
          @ParamOne = params['ParamOne']
          @ParamTwo = params['ParamTwo']
        end
      end

      # MCU混流布局参数
      class LayoutParams < TencentCloud::Common::AbstractModel
        # @param Template: 混流布局模板ID，0为悬浮模板(默认);1为九宫格模板;2为屏幕分享模板
        # @type Template: Integer
        # @param MainVideoUserId: 屏幕分享模板中有效，代表左侧大画面对应的用户ID
        # @type MainVideoUserId: String
        # @param MainVideoStreamType: 屏幕分享模板中有效，代表左侧大画面对应的流类型，0为摄像头，1为屏幕分享。左侧大画面为web用户时此值填0
        # @type MainVideoStreamType: Integer

        attr_accessor :Template, :MainVideoUserId, :MainVideoStreamType
        
        def initialize(template=nil, mainvideouserid=nil, mainvideostreamtype=nil)
          @Template = template
          @MainVideoUserId = mainvideouserid
          @MainVideoStreamType = mainvideostreamtype
        end

        def deserialize(params)
          @Template = params['Template']
          @MainVideoUserId = params['MainVideoUserId']
          @MainVideoStreamType = params['MainVideoStreamType']
        end
      end

      # MCU混流的输出参数
      class OutputParams < TencentCloud::Common::AbstractModel
        # @param StreamId: 直播流 ID，由用户自定义设置，该流 ID 不能与用户旁路的流 ID 相同。
        # @type StreamId: String
        # @param PureAudioStream: 取值范围[0,1]， 填0：直播流为音视频(默认); 填1：直播流为纯音频
        # @type PureAudioStream: Integer
        # @param RecordId: 自定义录制文件名
        # @type RecordId: String
        # @param RecordAudioOnly: 取值范围[0,1]，填0无实际含义; 填1：指定录制文件格式为mp3
        # @type RecordAudioOnly: Integer

        attr_accessor :StreamId, :PureAudioStream, :RecordId, :RecordAudioOnly
        
        def initialize(streamid=nil, pureaudiostream=nil, recordid=nil, recordaudioonly=nil)
          @StreamId = streamid
          @PureAudioStream = pureaudiostream
          @RecordId = recordid
          @RecordAudioOnly = recordaudioonly
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @PureAudioStream = params['PureAudioStream']
          @RecordId = params['RecordId']
          @RecordAudioOnly = params['RecordAudioOnly']
        end
      end

      # Es返回的质量数据
      class QualityData < TencentCloud::Common::AbstractModel
        # @param Content: 数据内容
        # @type Content: Array
        # @param UserId: 用户ID
        # @type UserId: String
        # @param PeerId: 对端Id,为空时表示上行数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerId: String
        # @param DataType: 数据类型
        # @type DataType: String

        attr_accessor :Content, :UserId, :PeerId, :DataType
        
        def initialize(content=nil, userid=nil, peerid=nil, datatype=nil)
          @Content = content
          @UserId = userid
          @PeerId = peerid
          @DataType = datatype
        end

        def deserialize(params)
          @Content = params['Content']
          @UserId = params['UserId']
          @PeerId = params['PeerId']
          @DataType = params['DataType']
        end
      end

      # 查询秒级监控返回的数据
      class RealtimeData < TencentCloud::Common::AbstractModel
        # @param Content: 返回的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param DataType: 数据类型字段
        # @type DataType: String

        attr_accessor :Content, :DataType
        
        def initialize(content=nil, datatype=nil)
          @Content = content
          @DataType = datatype
        end

        def deserialize(params)
          @Content = params['Content']
          @DataType = params['DataType']
        end
      end

      # RemoveUser请求参数结构体
      class RemoveUserRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer
        # @param UserIds: 要移出的用户列表，最多10个。
        # @type UserIds: Array

        attr_accessor :SdkAppId, :RoomId, :UserIds
        
        def initialize(sdkappid=nil, roomid=nil, userids=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserIds = userids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserIds = params['UserIds']
        end
      end

      # RemoveUser返回参数结构体
      class RemoveUserResponse < TencentCloud::Common::AbstractModel
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

      # 房间信息列表
      class RoomState < TencentCloud::Common::AbstractModel
        # @param CommId: 通话ID（唯一标识一次通话）
        # @type CommId: String
        # @param RoomString: 房间号
        # @type RoomString: String
        # @param CreateTime: 房间创建时间
        # @type CreateTime: Integer
        # @param DestroyTime: 房间销毁时间
        # @type DestroyTime: Integer
        # @param IsFinished: 房间是否已经结束
        # @type IsFinished: Boolean
        # @param UserId: 房间创建者Id
        # @type UserId: String

        attr_accessor :CommId, :RoomString, :CreateTime, :DestroyTime, :IsFinished, :UserId
        
        def initialize(commid=nil, roomstring=nil, createtime=nil, destroytime=nil, isfinished=nil, userid=nil)
          @CommId = commid
          @RoomString = roomstring
          @CreateTime = createtime
          @DestroyTime = destroytime
          @IsFinished = isfinished
          @UserId = userid
        end

        def deserialize(params)
          @CommId = params['CommId']
          @RoomString = params['RoomString']
          @CreateTime = params['CreateTime']
          @DestroyTime = params['DestroyTime']
          @IsFinished = params['IsFinished']
          @UserId = params['UserId']
        end
      end

      # 历史规模信息
      class ScaleInfomation < TencentCloud::Common::AbstractModel
        # @param Time: 每天开始的时间
        # @type Time: Integer
        # @param UserNumber: 房间人数，用户重复进入同一个房间为1次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserNumber: Integer
        # @param UserCount: 房间人次，用户每次进入房间为一次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserCount: Integer
        # @param RoomNumbers: sdkappid下一天内的房间数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomNumbers: Integer

        attr_accessor :Time, :UserNumber, :UserCount, :RoomNumbers
        
        def initialize(time=nil, usernumber=nil, usercount=nil, roomnumbers=nil)
          @Time = time
          @UserNumber = usernumber
          @UserCount = usercount
          @RoomNumbers = roomnumbers
        end

        def deserialize(params)
          @Time = params['Time']
          @UserNumber = params['UserNumber']
          @UserCount = params['UserCount']
          @RoomNumbers = params['RoomNumbers']
        end
      end

      # StartMCUMixTranscode请求参数结构体
      class StartMCUMixTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer
        # @param OutputParams: 混流输出控制参数。
        # @type OutputParams: :class:`Tencentcloud::Trtc.v20190722.models.OutputParams`
        # @param EncodeParams: 混流输出编码参数。
        # @type EncodeParams: :class:`Tencentcloud::Trtc.v20190722.models.EncodeParams`
        # @param LayoutParams: 混流输出布局参数。
        # @type LayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.LayoutParams`

        attr_accessor :SdkAppId, :RoomId, :OutputParams, :EncodeParams, :LayoutParams
        
        def initialize(sdkappid=nil, roomid=nil, outputparams=nil, encodeparams=nil, layoutparams=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @OutputParams = outputparams
          @EncodeParams = encodeparams
          @LayoutParams = layoutparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          unless params['OutputParams'].nil?
            @OutputParams = OutputParams.new.deserialize(params[OutputParams])
          end
          unless params['EncodeParams'].nil?
            @EncodeParams = EncodeParams.new.deserialize(params[EncodeParams])
          end
          unless params['LayoutParams'].nil?
            @LayoutParams = LayoutParams.new.deserialize(params[LayoutParams])
          end
        end
      end

      # StartMCUMixTranscode返回参数结构体
      class StartMCUMixTranscodeResponse < TencentCloud::Common::AbstractModel
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

      # StopMCUMixTranscode请求参数结构体
      class StopMCUMixTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer

        attr_accessor :SdkAppId, :RoomId
        
        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # StopMCUMixTranscode返回参数结构体
      class StopMCUMixTranscodeResponse < TencentCloud::Common::AbstractModel
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

      # 返回的质量数据，时间:值
      class TimeValue < TencentCloud::Common::AbstractModel
        # @param Time: 时间，unix时间戳（1590065877s)
        # @type Time: Integer
        # @param Value: 当前时间返回参数取值，如（bigvCapFps在1590065877取值为0，则Value：0 ）
        # @type Value: Float

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 用户信息，包括用户进房时间，退房时间等
      class UserInformation < TencentCloud::Common::AbstractModel
        # @param RoomStr: 房间号
        # @type RoomStr: String
        # @param UserId: 用户Id
        # @type UserId: String
        # @param JoinTs: 用户进房时间
        # @type JoinTs: Integer
        # @param LeaveTs: 用户退房时间
        # @type LeaveTs: Integer
        # @param DeviceType: 终端类型
        # @type DeviceType: String
        # @param SdkVersion: Sdk版本号
        # @type SdkVersion: String
        # @param ClientIp: 客户端IP地址
        # @type ClientIp: String
        # @param Finished: 判断用户是否已经离开房间
        # @type Finished: Boolean

        attr_accessor :RoomStr, :UserId, :JoinTs, :LeaveTs, :DeviceType, :SdkVersion, :ClientIp, :Finished
        
        def initialize(roomstr=nil, userid=nil, joints=nil, leavets=nil, devicetype=nil, sdkversion=nil, clientip=nil, finished=nil)
          @RoomStr = roomstr
          @UserId = userid
          @JoinTs = joints
          @LeaveTs = leavets
          @DeviceType = devicetype
          @SdkVersion = sdkversion
          @ClientIp = clientip
          @Finished = finished
        end

        def deserialize(params)
          @RoomStr = params['RoomStr']
          @UserId = params['UserId']
          @JoinTs = params['JoinTs']
          @LeaveTs = params['LeaveTs']
          @DeviceType = params['DeviceType']
          @SdkVersion = params['SdkVersion']
          @ClientIp = params['ClientIp']
          @Finished = params['Finished']
        end
      end

    end
  end
end
