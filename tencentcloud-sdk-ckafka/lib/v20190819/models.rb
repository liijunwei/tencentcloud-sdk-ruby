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
  module Ckafka
    module V20190819
      # ACL对象实体
      class Acl < TencentCloud::Common::AbstractModel
        # @param ResourceType: Acl资源类型，（0:UNKNOWN，1:ANY，2:TOPIC，3:GROUP，4:CLUSTER，5:TRANSACTIONAL_ID）当前只有TOPIC，
        # @type ResourceType: Integer
        # @param ResourceName: 资源名称，和resourceType相关如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称
        # @type ResourceName: String
        # @param Principal: 用户列表，默认为User:*，表示任何user都可以访问，当前用户只能是用户列表中包含的用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Principal: String
        # @param Host: 默认为*，表示任何host都可以访问，当前ckafka不支持host为*，但是后面开源kafka的产品化会直接支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param Operation: Acl操作方式(0:UNKNOWN，1:ANY，2:ALL，3:READ，4:WRITE，5:CREATE，6:DELETE，7:ALTER，8:DESCRIBE，9:CLUSTER_ACTION，10:DESCRIBE_CONFIGS，11:ALTER_CONFIGS，12:IDEMPOTEN_WRITE)
        # @type Operation: Integer
        # @param PermissionType: 权限类型(0:UNKNOWN，1:ANY，2:DENY，3:ALLOW)
        # @type PermissionType: Integer

        attr_accessor :ResourceType, :ResourceName, :Principal, :Host, :Operation, :PermissionType
        
        def initialize(resourcetype=nil, resourcename=nil, principal=nil, host=nil, operation=nil, permissiontype=nil)
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @Principal = principal
          @Host = host
          @Operation = operation
          @PermissionType = permissiontype
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @Principal = params['Principal']
          @Host = params['Host']
          @Operation = params['Operation']
          @PermissionType = params['PermissionType']
        end
      end

      # ACL返回结果集
      class AclResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数据条数
        # @type TotalCount: Integer
        # @param AclList: ACL列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclList: Array

        attr_accessor :TotalCount, :AclList
        
        def initialize(totalcount=nil, acllist=nil)
          @TotalCount = totalcount
          @AclList = acllist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AclList'].nil?
            @AclList = []
            params['AclList'].each do |i|
              @AclList << Acl.new.deserialize(i)
            end
          end
        end
      end

      # AppId的查询结果
      class AppIdResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合要求的所有AppId数量
        # @type TotalCount: Integer
        # @param AppIdList: 符合要求的App Id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppIdList: Array

        attr_accessor :TotalCount, :AppIdList
        
        def initialize(totalcount=nil, appidlist=nil)
          @TotalCount = totalcount
          @AppIdList = appidlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AppIdList = params['AppIdList']
        end
      end

      # 存储着分配给该消费者的 partition 信息
      class Assignment < TencentCloud::Common::AbstractModel
        # @param Version: assingment版本信息
        # @type Version: Integer
        # @param Topics: topic信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topics: Array

        attr_accessor :Version, :Topics
        
        def initialize(version=nil, topics=nil)
          @Version = version
          @Topics = topics
        end

        def deserialize(params)
          @Version = params['Version']
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              @Topics << GroupInfoTopics.new.deserialize(i)
            end
          end
        end
      end

      # 集群信息实体
      class ClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: Integer
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param MaxDiskSize: 集群最大磁盘 单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDiskSize: Integer
        # @param MaxBandWidth: 集群最大带宽 单位MB/s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxBandWidth: Integer
        # @param AvailableDiskSize: 集群当前可用磁盘  单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableDiskSize: Integer
        # @param AvailableBandWidth: 集群当前可用带宽 单位MB/s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableBandWidth: Integer
        # @param ZoneId: 集群所属可用区，表明集群归属的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneIds: 集群节点所在的可用区，若该集群为跨可用区集群，则包含该集群节点所在的多个可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIds: Array

        attr_accessor :ClusterId, :ClusterName, :MaxDiskSize, :MaxBandWidth, :AvailableDiskSize, :AvailableBandWidth, :ZoneId, :ZoneIds
        
        def initialize(clusterid=nil, clustername=nil, maxdisksize=nil, maxbandwidth=nil, availabledisksize=nil, availablebandwidth=nil, zoneid=nil, zoneids=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @MaxDiskSize = maxdisksize
          @MaxBandWidth = maxbandwidth
          @AvailableDiskSize = availabledisksize
          @AvailableBandWidth = availablebandwidth
          @ZoneId = zoneid
          @ZoneIds = zoneids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @MaxDiskSize = params['MaxDiskSize']
          @MaxBandWidth = params['MaxBandWidth']
          @AvailableDiskSize = params['AvailableDiskSize']
          @AvailableBandWidth = params['AvailableBandWidth']
          @ZoneId = params['ZoneId']
          @ZoneIds = params['ZoneIds']
        end
      end

      # 高级配置对象
      class Config < TencentCloud::Common::AbstractModel
        # @param Retention: 消息保留时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retention: Integer
        # @param MinInsyncReplicas: 最小同步复制数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinInsyncReplicas: Integer
        # @param CleanUpPolicy: 日志清理模式，默认 delete。
        # delete：日志按保存时间删除；compact：日志按 key 压缩；compact, delete：日志按 key 压缩且会保存时间删除。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CleanUpPolicy: String
        # @param SegmentMs: Segment 分片滚动的时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentMs: Integer
        # @param UncleanLeaderElectionEnable: 0表示 false。 1表示 true。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UncleanLeaderElectionEnable: Integer
        # @param SegmentBytes: Segment 分片滚动的字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentBytes: Integer
        # @param MaxMessageBytes: 最大消息字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMessageBytes: Integer

        attr_accessor :Retention, :MinInsyncReplicas, :CleanUpPolicy, :SegmentMs, :UncleanLeaderElectionEnable, :SegmentBytes, :MaxMessageBytes
        
        def initialize(retention=nil, mininsyncreplicas=nil, cleanuppolicy=nil, segmentms=nil, uncleanleaderelectionenable=nil, segmentbytes=nil, maxmessagebytes=nil)
          @Retention = retention
          @MinInsyncReplicas = mininsyncreplicas
          @CleanUpPolicy = cleanuppolicy
          @SegmentMs = segmentms
          @UncleanLeaderElectionEnable = uncleanleaderelectionenable
          @SegmentBytes = segmentbytes
          @MaxMessageBytes = maxmessagebytes
        end

        def deserialize(params)
          @Retention = params['Retention']
          @MinInsyncReplicas = params['MinInsyncReplicas']
          @CleanUpPolicy = params['CleanUpPolicy']
          @SegmentMs = params['SegmentMs']
          @UncleanLeaderElectionEnable = params['UncleanLeaderElectionEnable']
          @SegmentBytes = params['SegmentBytes']
          @MaxMessageBytes = params['MaxMessageBytes']
        end
      end

      # 用户组实体
      class ConsumerGroup < TencentCloud::Common::AbstractModel
        # @param ConsumerGroupName: 用户组名称
        # @type ConsumerGroupName: String
        # @param SubscribedInfo: 订阅信息实体
        # @type SubscribedInfo: Array

        attr_accessor :ConsumerGroupName, :SubscribedInfo
        
        def initialize(consumergroupname=nil, subscribedinfo=nil)
          @ConsumerGroupName = consumergroupname
          @SubscribedInfo = subscribedinfo
        end

        def deserialize(params)
          @ConsumerGroupName = params['ConsumerGroupName']
          unless params['SubscribedInfo'].nil?
            @SubscribedInfo = []
            params['SubscribedInfo'].each do |i|
              @SubscribedInfo << SubscribedInfo.new.deserialize(i)
            end
          end
        end
      end

      # 消费组返回结果实体
      class ConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的消费组数量
        # @type TotalCount: Integer
        # @param TopicList: 主题列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param GroupList: 消费分组List
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupList: Array
        # @param TotalPartition: 所有分区数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPartition: Integer
        # @param PartitionListForMonitor: 监控的分区列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionListForMonitor: Array
        # @param TotalTopic: 主题总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTopic: Integer
        # @param TopicListForMonitor: 监控的主题列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicListForMonitor: Array
        # @param GroupListForMonitor: 监控的组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupListForMonitor: Array

        attr_accessor :TotalCount, :TopicList, :GroupList, :TotalPartition, :PartitionListForMonitor, :TotalTopic, :TopicListForMonitor, :GroupListForMonitor
        
        def initialize(totalcount=nil, topiclist=nil, grouplist=nil, totalpartition=nil, partitionlistformonitor=nil, totaltopic=nil, topiclistformonitor=nil, grouplistformonitor=nil)
          @TotalCount = totalcount
          @TopicList = topiclist
          @GroupList = grouplist
          @TotalPartition = totalpartition
          @PartitionListForMonitor = partitionlistformonitor
          @TotalTopic = totaltopic
          @TopicListForMonitor = topiclistformonitor
          @GroupListForMonitor = grouplistformonitor
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              @TopicList << ConsumerGroupTopic.new.deserialize(i)
            end
          end
          unless params['GroupList'].nil?
            @GroupList = []
            params['GroupList'].each do |i|
              @GroupList << ConsumerGroup.new.deserialize(i)
            end
          end
          @TotalPartition = params['TotalPartition']
          unless params['PartitionListForMonitor'].nil?
            @PartitionListForMonitor = []
            params['PartitionListForMonitor'].each do |i|
              @PartitionListForMonitor << Partition.new.deserialize(i)
            end
          end
          @TotalTopic = params['TotalTopic']
          unless params['TopicListForMonitor'].nil?
            @TopicListForMonitor = []
            params['TopicListForMonitor'].each do |i|
              @TopicListForMonitor << ConsumerGroupTopic.new.deserialize(i)
            end
          end
          unless params['GroupListForMonitor'].nil?
            @GroupListForMonitor = []
            params['GroupListForMonitor'].each do |i|
              @GroupListForMonitor << Group.new.deserialize(i)
            end
          end
        end
      end

      # 消费组主题对象
      class ConsumerGroupTopic < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题ID
        # @type TopicId: String
        # @param TopicName: 主题名称
        # @type TopicName: String

        attr_accessor :TopicId, :TopicName
        
        def initialize(topicid=nil, topicname=nil)
          @TopicId = topicid
          @TopicName = topicname
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
        end
      end

      # CreateAcl请求参数结构体
      class CreateAclRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id信息
        # @type InstanceId: String
        # @param ResourceType: Acl资源类型，(0:UNKNOWN，1:ANY，2:TOPIC，3:GROUP，4:CLUSTER，5:TRANSACTIONAL_ID)，当前只有TOPIC，其它字段用于后续兼容开源kafka的acl时使用
        # @type ResourceType: Integer
        # @param Operation: Acl操作方式，(0:UNKNOWN，1:ANY，2:ALL，3:READ，4:WRITE，5:CREATE，6:DELETE，7:ALTER，8:DESCRIBE，9:CLUSTER_ACTION，10:DESCRIBE_CONFIGS，11:ALTER_CONFIGS)
        # @type Operation: Integer
        # @param PermissionType: 权限类型，(0:UNKNOWN，1:ANY，2:DENY，3:ALLOW)，当前ckakfa支持ALLOW(相当于白名单)，其它用于后续兼容开源kafka的acl时使用
        # @type PermissionType: Integer
        # @param ResourceName: 资源名称，和resourceType相关，如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称
        # @type ResourceName: String
        # @param Host: 默认为\*，表示任何host都可以访问，当前ckafka不支持host为\*，但是后面开源kafka的产品化会直接支持
        # @type Host: String
        # @param Principal: 用户列表，默认为User:*，表示任何user都可以访问，当前用户只能是用户列表中包含的用户。传入时需要加 User: 前缀,如用户A则传入User:A。
        # @type Principal: String

        attr_accessor :InstanceId, :ResourceType, :Operation, :PermissionType, :ResourceName, :Host, :Principal
        
        def initialize(instanceid=nil, resourcetype=nil, operation=nil, permissiontype=nil, resourcename=nil, host=nil, principal=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @Operation = operation
          @PermissionType = permissiontype
          @ResourceName = resourcename
          @Host = host
          @Principal = principal
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @Operation = params['Operation']
          @PermissionType = params['PermissionType']
          @ResourceName = params['ResourceName']
          @Host = params['Host']
          @Principal = params['Principal']
        end
      end

      # CreateAcl返回参数结构体
      class CreateAclResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建预付费接口返回的Data
      class CreateInstancePreData < TencentCloud::Common::AbstractModel
        # @param FlowId: CreateInstancePre返回固定为0，不能作为CheckTaskStatus的查询条件。只是为了保证和后台数据结构对齐。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param DealNames: 订单号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array

        attr_accessor :FlowId, :DealNames
        
        def initialize(flowid=nil, dealnames=nil)
          @FlowId = flowid
          @DealNames = dealnames
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
        end
      end

      # CreateInstancePre请求参数结构体
      class CreateInstancePreRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type InstanceName: String
        # @param ZoneId: 可用区
        # @type ZoneId: Integer
        # @param Period: 预付费购买时长，例如 "1m",就是一个月
        # @type Period: String
        # @param InstanceType: 实例规格，1：入门型 ，2： 标准型，3 ：进阶型，4 ：容量型，5： 高阶型1，6：高阶性2, 7： 高阶型3,8： 高阶型4， 9 ：独占型。
        # @type InstanceType: Integer
        # @param VpcId: vpcId，不填默认基础网络
        # @type VpcId: String
        # @param SubnetId: 子网id，vpc网络需要传该参数，基础网络可以不传
        # @type SubnetId: String
        # @param MsgRetentionTime: 可选。实例日志的最长保留时间，单位分钟，默认为10080（7天），最大30天，不填默认0，代表不开启日志保留时间回收策略
        # @type MsgRetentionTime: Integer
        # @param ClusterId: 创建实例时可以选择集群Id, 该入参表示集群Id
        # @type ClusterId: Integer
        # @param RenewFlag: 预付费自动续费标记，0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type RenewFlag: Integer

        attr_accessor :InstanceName, :ZoneId, :Period, :InstanceType, :VpcId, :SubnetId, :MsgRetentionTime, :ClusterId, :RenewFlag
        
        def initialize(instancename=nil, zoneid=nil, period=nil, instancetype=nil, vpcid=nil, subnetid=nil, msgretentiontime=nil, clusterid=nil, renewflag=nil)
          @InstanceName = instancename
          @ZoneId = zoneid
          @Period = period
          @InstanceType = instancetype
          @VpcId = vpcid
          @SubnetId = subnetid
          @MsgRetentionTime = msgretentiontime
          @ClusterId = clusterid
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @ZoneId = params['ZoneId']
          @Period = params['Period']
          @InstanceType = params['InstanceType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @MsgRetentionTime = params['MsgRetentionTime']
          @ClusterId = params['ClusterId']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 创建预付费实例返回结构
      class CreateInstancePreResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回的code，0为正常，非0为错误
        # @type ReturnCode: String
        # @param ReturnMessage: 成功消息
        # @type ReturnMessage: String
        # @param Data: 操作型返回的Data数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ckafka.v20190819.models.CreateInstancePreData`

        attr_accessor :ReturnCode, :ReturnMessage, :Data
        
        def initialize(returncode=nil, returnmessage=nil, data=nil)
          @ReturnCode = returncode
          @ReturnMessage = returnmessage
          @Data = data
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMessage = params['ReturnMessage']
          unless params['Data'].nil?
            @Data = CreateInstancePreData.new.deserialize(params['Data'])
          end
        end
      end

      # CreatePartition请求参数结构体
      class CreatePartitionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param PartitionNum: 主题分区个数
        # @type PartitionNum: Integer

        attr_accessor :InstanceId, :TopicName, :PartitionNum
        
        def initialize(instanceid=nil, topicname=nil, partitionnum=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @PartitionNum = partitionnum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @PartitionNum = params['PartitionNum']
        end
      end

      # CreatePartition返回参数结构体
      class CreatePartitionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTopicIpWhiteList请求参数结构体
      class CreateTopicIpWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param IpWhiteList: ip白名单列表
        # @type IpWhiteList: Array

        attr_accessor :InstanceId, :TopicName, :IpWhiteList
        
        def initialize(instanceid=nil, topicname=nil, ipwhitelist=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @IpWhiteList = ipwhitelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @IpWhiteList = params['IpWhiteList']
        end
      end

      # CreateTopicIpWhiteList返回参数结构体
      class CreateTopicIpWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除主题IP白名单结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param TopicName: 主题名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type TopicName: String
        # @param PartitionNum: Partition个数，大于0
        # @type PartitionNum: Integer
        # @param ReplicaNum: 副本个数，不能多于 broker 数，最大为3
        # @type ReplicaNum: Integer
        # @param EnableWhiteList: ip白名单开关, 1:打开  0:关闭，默认不打开
        # @type EnableWhiteList: Integer
        # @param IpWhiteList: Ip白名单列表，配额限制，enableWhileList=1时必选
        # @type IpWhiteList: Array
        # @param CleanUpPolicy: 清理日志策略，日志清理模式，默认为"delete"。"delete"：日志按保存时间删除，"compact"：日志按 key 压缩，"compact, delete"：日志按 key 压缩且会按保存时间删除。
        # @type CleanUpPolicy: String
        # @param Note: 主题备注，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type Note: String
        # @param MinInsyncReplicas: 默认为1
        # @type MinInsyncReplicas: Integer
        # @param UncleanLeaderElectionEnable: 是否允许未同步的副本选为leader，false:不允许，true:允许，默认不允许
        # @type UncleanLeaderElectionEnable: Integer
        # @param RetentionMs: 可消息选。保留时间，单位ms，当前最小值为60000ms
        # @type RetentionMs: Integer
        # @param SegmentMs: Segment分片滚动的时长，单位ms，当前最小为3600000ms
        # @type SegmentMs: Integer

        attr_accessor :InstanceId, :TopicName, :PartitionNum, :ReplicaNum, :EnableWhiteList, :IpWhiteList, :CleanUpPolicy, :Note, :MinInsyncReplicas, :UncleanLeaderElectionEnable, :RetentionMs, :SegmentMs
        
        def initialize(instanceid=nil, topicname=nil, partitionnum=nil, replicanum=nil, enablewhitelist=nil, ipwhitelist=nil, cleanuppolicy=nil, note=nil, mininsyncreplicas=nil, uncleanleaderelectionenable=nil, retentionms=nil, segmentms=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @PartitionNum = partitionnum
          @ReplicaNum = replicanum
          @EnableWhiteList = enablewhitelist
          @IpWhiteList = ipwhitelist
          @CleanUpPolicy = cleanuppolicy
          @Note = note
          @MinInsyncReplicas = mininsyncreplicas
          @UncleanLeaderElectionEnable = uncleanleaderelectionenable
          @RetentionMs = retentionms
          @SegmentMs = segmentms
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @PartitionNum = params['PartitionNum']
          @ReplicaNum = params['ReplicaNum']
          @EnableWhiteList = params['EnableWhiteList']
          @IpWhiteList = params['IpWhiteList']
          @CleanUpPolicy = params['CleanUpPolicy']
          @Note = params['Note']
          @MinInsyncReplicas = params['MinInsyncReplicas']
          @UncleanLeaderElectionEnable = params['UncleanLeaderElectionEnable']
          @RetentionMs = params['RetentionMs']
          @SegmentMs = params['SegmentMs']
        end
      end

      # 创建主题返回
      class CreateTopicResp < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题Id
        # @type TopicId: String

        attr_accessor :TopicId
        
        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回创建结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.CreateTopicResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateTopicResp.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Name: 用户名称
        # @type Name: String
        # @param Password: 用户密码
        # @type Password: String

        attr_accessor :InstanceId, :Name, :Password
        
        def initialize(instanceid=nil, name=nil, password=nil)
          @InstanceId = instanceid
          @Name = name
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Password = params['Password']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAcl请求参数结构体
      class DeleteAclRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id信息
        # @type InstanceId: String
        # @param ResourceType: Acl资源类型，(0:UNKNOWN，1:ANY，2:TOPIC，3:GROUP，4:CLUSTER，5:TRANSACTIONAL_ID)，当前只有TOPIC，其它字段用于后续兼容开源kafka的acl时使用
        # @type ResourceType: Integer
        # @param ResourceName: 资源名称，和resourceType相关，如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称
        # @type ResourceName: String
        # @param Operation: Acl操作方式，(0:UNKNOWN，1:ANY，2:ALL，3:READ，4:WRITE，5:CREATE，6:DELETE，7:ALTER，8:DESCRIBE，9:CLUSTER_ACTION，10:DESCRIBE_CONFIGS，11:ALTER_CONFIGS，12:IDEMPOTEN_WRITE)，当前ckafka只支持READ,WRITE，其它用于后续兼容开源kafka的acl时使用
        # @type Operation: Integer
        # @param PermissionType: 权限类型，(0:UNKNOWN，1:ANY，2:DENY，3:ALLOW)，当前ckakfa支持ALLOW(相当于白名单)，其它用于后续兼容开源kafka的acl时使用
        # @type PermissionType: Integer
        # @param Host: 默认为\*，表示任何host都可以访问，当前ckafka不支持host为\*，但是后面开源kafka的产品化会直接支持
        # @type Host: String
        # @param Principal: 用户列表，默认为*，表示任何user都可以访问，当前用户只能是用户列表中包含的用户
        # @type Principal: String

        attr_accessor :InstanceId, :ResourceType, :ResourceName, :Operation, :PermissionType, :Host, :Principal
        
        def initialize(instanceid=nil, resourcetype=nil, resourcename=nil, operation=nil, permissiontype=nil, host=nil, principal=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @Operation = operation
          @PermissionType = permissiontype
          @Host = host
          @Principal = principal
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @Operation = params['Operation']
          @PermissionType = params['PermissionType']
          @Host = params['Host']
          @Principal = params['Principal']
        end
      end

      # DeleteAcl返回参数结构体
      class DeleteAclResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAclRule请求参数结构体
      class DeleteAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id信息
        # @type InstanceId: String
        # @param RuleName: acl规则名称
        # @type RuleName: String

        attr_accessor :InstanceId, :RuleName
        
        def initialize(instanceid=nil, rulename=nil)
          @InstanceId = instanceid
          @RuleName = rulename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RuleName = params['RuleName']
        end
      end

      # DeleteAclRule返回参数结构体
      class DeleteAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回被删除的规则的ID
        # @type Result: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTopicIpWhiteList请求参数结构体
      class DeleteTopicIpWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param IpWhiteList: ip白名单列表
        # @type IpWhiteList: Array

        attr_accessor :InstanceId, :TopicName, :IpWhiteList
        
        def initialize(instanceid=nil, topicname=nil, ipwhitelist=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @IpWhiteList = ipwhitelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @IpWhiteList = params['IpWhiteList']
        end
      end

      # DeleteTopicIpWhiteList返回参数结构体
      class DeleteTopicIpWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除主题IP白名单结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTopic请求参数结构体
      class DeleteTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ckafka 实例Id
        # @type InstanceId: String
        # @param TopicName: ckafka 主题名称
        # @type TopicName: String

        attr_accessor :InstanceId, :TopicName
        
        def initialize(instanceid=nil, topicname=nil)
          @InstanceId = instanceid
          @TopicName = topicname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
        end
      end

      # DeleteTopic返回参数结构体
      class DeleteTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteUser请求参数结构体
      class DeleteUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Name: 用户名称
        # @type Name: String

        attr_accessor :InstanceId, :Name
        
        def initialize(instanceid=nil, name=nil)
          @InstanceId = instanceid
          @Name = name
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
        end
      end

      # DeleteUser返回参数结构体
      class DeleteUserResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeACL请求参数结构体
      class DescribeACLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ResourceType: Acl资源类型，(0:UNKNOWN，1:ANY，2:TOPIC，3:GROUP，4:CLUSTER，5:TRANSACTIONAL_ID)，当前只有TOPIC，其它字段用于后续兼容开源kafka的acl时使用
        # @type ResourceType: Integer
        # @param ResourceName: 资源名称，和resourceType相关，如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称
        # @type ResourceName: String
        # @param Offset: 偏移位置
        # @type Offset: Integer
        # @param Limit: 个数限制
        # @type Limit: Integer
        # @param SearchWord: 关键字匹配
        # @type SearchWord: String

        attr_accessor :InstanceId, :ResourceType, :ResourceName, :Offset, :Limit, :SearchWord
        
        def initialize(instanceid=nil, resourcetype=nil, resourcename=nil, offset=nil, limit=nil, searchword=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeACL返回参数结构体
      class DescribeACLResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的ACL结果集对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.AclResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AclResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAppInfo请求参数结构体
      class DescribeAppInfoRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移位置
        # @type Offset: Integer
        # @param Limit: 本次查询用户数目最大数量限制，最大值为50，默认50
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAppInfo返回参数结构体
      class DescribeAppInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的符合要求的App Id列表
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.AppIdResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AppIdResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCkafkaZone请求参数结构体
      class DescribeCkafkaZoneRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCkafkaZone返回参数结构体
      class DescribeCkafkaZoneResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询结果复杂对象实体
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ZoneResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ZoneResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConsumerGroup请求参数结构体
      class DescribeConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ckafka实例id。
        # @type InstanceId: String
        # @param GroupName: 可选，用户需要查询的group名称。
        # @type GroupName: String
        # @param TopicName: 可选，用户需要查询的group中的对应的topic名称，如果指定了该参数，而group又未指定则忽略该参数。
        # @type TopicName: String
        # @param Limit: 本次返回个数限制
        # @type Limit: Integer
        # @param Offset: 偏移位置
        # @type Offset: Integer

        attr_accessor :InstanceId, :GroupName, :TopicName, :Limit, :Offset
        
        def initialize(instanceid=nil, groupname=nil, topicname=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @GroupName = groupname
          @TopicName = topicname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupName = params['GroupName']
          @TopicName = params['TopicName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeConsumerGroup返回参数结构体
      class DescribeConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的消费分组信息
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ConsumerGroupResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConsumerGroupResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroup返回实体
      class DescribeGroup < TencentCloud::Common::AbstractModel
        # @param Group: groupId
        # @type Group: String
        # @param Protocol: 该 group 使用的协议。
        # @type Protocol: String

        attr_accessor :Group, :Protocol
        
        def initialize(group=nil, protocol=nil)
          @Group = group
          @Protocol = protocol
        end

        def deserialize(params)
          @Group = params['Group']
          @Protocol = params['Protocol']
        end
      end

      # DescribeGroupInfo请求参数结构体
      class DescribeGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （过滤条件）按照实例 ID 过滤。
        # @type InstanceId: String
        # @param GroupList: Kafka 消费分组，Consumer-group，这里是数组形式，格式：GroupList.0=xxx&GroupList.1=yyy。
        # @type GroupList: Array

        attr_accessor :InstanceId, :GroupList
        
        def initialize(instanceid=nil, grouplist=nil)
          @InstanceId = instanceid
          @GroupList = grouplist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupList = params['GroupList']
        end
      end

      # DescribeGroupInfo返回参数结构体
      class DescribeGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              @Result << GroupInfoResponse.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupOffsets请求参数结构体
      class DescribeGroupOffsetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （过滤条件）按照实例 ID 过滤
        # @type InstanceId: String
        # @param Group: Kafka 消费分组
        # @type Group: String
        # @param Topics: group 订阅的主题名称数组，如果没有该数组，则表示指定的 group 下所有 topic 信息
        # @type Topics: Array
        # @param SearchWord: 模糊匹配 topicName
        # @type SearchWord: String
        # @param Offset: 本次查询的偏移位置，默认为0
        # @type Offset: Integer
        # @param Limit: 本次返回结果的最大个数，默认为50，最大值为50
        # @type Limit: Integer

        attr_accessor :InstanceId, :Group, :Topics, :SearchWord, :Offset, :Limit
        
        def initialize(instanceid=nil, group=nil, topics=nil, searchword=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Group = group
          @Topics = topics
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Group = params['Group']
          @Topics = params['Topics']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGroupOffsets返回参数结构体
      class DescribeGroupOffsetsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.GroupOffsetResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupOffsetResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroup请求参数结构体
      class DescribeGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 最大返回数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :SearchWord, :Offset, :Limit
        
        def initialize(instanceid=nil, searchword=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGroup返回参数结构体
      class DescribeGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果集列表
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.GroupResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceAttributes请求参数结构体
      class DescribeInstanceAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceAttributes返回参数结构体
      class DescribeInstanceAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 实例属性返回结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceAttributesResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceAttributesResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesDetail请求参数结构体
      class DescribeInstancesDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （过滤条件）按照实例ID过滤
        # @type InstanceId: String
        # @param SearchWord: （过滤条件）按照实例名称过滤，支持模糊查询
        # @type SearchWord: String
        # @param Status: （过滤条件）实例的状态。0：创建中，1：运行中，2：删除中，不填默认返回全部
        # @type Status: Array
        # @param Offset: 偏移量，不填默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认10，最大值20
        # @type Limit: Integer
        # @param TagKey: 匹配标签key值。
        # @type TagKey: String
        # @param Filters: 过滤器
        # @type Filters: Array

        attr_accessor :InstanceId, :SearchWord, :Status, :Offset, :Limit, :TagKey, :Filters
        
        def initialize(instanceid=nil, searchword=nil, status=nil, offset=nil, limit=nil, tagkey=nil, filters=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Status = status
          @Offset = offset
          @Limit = limit
          @TagKey = tagkey
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TagKey = params['TagKey']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # DescribeInstancesDetail返回参数结构体
      class DescribeInstancesDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的实例详情结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceDetailResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceDetailResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （过滤条件）按照实例ID过滤
        # @type InstanceId: String
        # @param SearchWord: （过滤条件）按照实例名称过滤，支持模糊查询
        # @type SearchWord: String
        # @param Status: （过滤条件）实例的状态。0：创建中，1：运行中，2：删除中，不填默认返回全部
        # @type Status: Array
        # @param Offset: 偏移量，不填默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认10，最大值100
        # @type Limit: Integer
        # @param TagKey: 匹配标签key值。
        # @type TagKey: String

        attr_accessor :InstanceId, :SearchWord, :Status, :Offset, :Limit, :TagKey
        
        def initialize(instanceid=nil, searchword=nil, status=nil, offset=nil, limit=nil, tagkey=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Status = status
          @Offset = offset
          @Limit = limit
          @TagKey = tagkey
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TagKey = params['TagKey']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegion请求参数结构体
      class DescribeRegionRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回最大结果数
        # @type Limit: Integer
        # @param Business: 业务字段，可忽略
        # @type Business: String

        attr_accessor :Offset, :Limit, :Business
        
        def initialize(offset=nil, limit=nil, business=nil)
          @Offset = offset
          @Limit = limit
          @Business = business
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Business = params['Business']
        end
      end

      # DescribeRegion返回参数结构体
      class DescribeRegionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回地域枚举结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              @Result << Region.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoute请求参数结构体
      class DescribeRouteRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeRoute返回参数结构体
      class DescribeRouteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的路由信息结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.RouteResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = RouteResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicAttributes请求参数结构体
      class DescribeTopicAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String

        attr_accessor :InstanceId, :TopicName
        
        def initialize(instanceid=nil, topicname=nil)
          @InstanceId = instanceid
          @TopicName = topicname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
        end
      end

      # DescribeTopicAttributes返回参数结构体
      class DescribeTopicAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicAttributesResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicAttributesResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicDetail请求参数结构体
      class DescribeTopicDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param SearchWord: （过滤条件）按照topicName过滤，支持模糊查询
        # @type SearchWord: String
        # @param Offset: 偏移量，不填默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认 10，最大值20，取值要大于0
        # @type Limit: Integer

        attr_accessor :InstanceId, :SearchWord, :Offset, :Limit
        
        def initialize(instanceid=nil, searchword=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTopicDetail返回参数结构体
      class DescribeTopicDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的主题详情实体
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicDetailResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicDetailResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopic请求参数结构体
      class DescribeTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param SearchWord: 过滤条件，按照 topicName 过滤，支持模糊查询
        # @type SearchWord: String
        # @param Offset: 偏移量，不填默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为50
        # @type Limit: Integer

        attr_accessor :InstanceId, :SearchWord, :Offset, :Limit
        
        def initialize(instanceid=nil, searchword=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTopic返回参数结构体
      class DescribeTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicResult.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUser请求参数结构体
      class DescribeUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param SearchWord: 按照名称过滤
        # @type SearchWord: String
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 本次返回个数
        # @type Limit: Integer

        attr_accessor :InstanceId, :SearchWord, :Offset, :Limit
        
        def initialize(instanceid=nil, searchword=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeUser返回参数结构体
      class DescribeUserResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果列表
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.UserResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UserResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 动态消息保留时间配置
      class DynamicRetentionTime < TencentCloud::Common::AbstractModel
        # @param Enable: 动态消息保留时间配置开关（0: 关闭，1: 开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param DiskQuotaPercentage: 磁盘配额百分比触发条件，即消息达到此值触发消息保留时间变更事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskQuotaPercentage: Integer
        # @param StepForwardPercentage: 每次向前调整消息保留时间百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepForwardPercentage: Integer
        # @param BottomRetention: 保底时长，单位分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BottomRetention: Integer

        attr_accessor :Enable, :DiskQuotaPercentage, :StepForwardPercentage, :BottomRetention
        
        def initialize(enable=nil, diskquotapercentage=nil, stepforwardpercentage=nil, bottomretention=nil)
          @Enable = enable
          @DiskQuotaPercentage = diskquotapercentage
          @StepForwardPercentage = stepforwardpercentage
          @BottomRetention = bottomretention
        end

        def deserialize(params)
          @Enable = params['Enable']
          @DiskQuotaPercentage = params['DiskQuotaPercentage']
          @StepForwardPercentage = params['StepForwardPercentage']
          @BottomRetention = params['BottomRetention']
        end
      end

      # 查询过滤器
      # >描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      # >
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
        # @type Values: Array

        attr_accessor :Name, :Values
        
        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 组实体
      class Group < TencentCloud::Common::AbstractModel
        # @param GroupName: 组名称
        # @type GroupName: String

        attr_accessor :GroupName
        
        def initialize(groupname=nil)
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupName = params['GroupName']
        end
      end

      # consumer信息
      class GroupInfoMember < TencentCloud::Common::AbstractModel
        # @param MemberId: coordinator 为消费分组中的消费者生成的唯一 ID
        # @type MemberId: String
        # @param ClientId: 客户消费者 SDK 自己设置的 client.id 信息
        # @type ClientId: String
        # @param ClientHost: 一般存储客户的 IP 地址
        # @type ClientHost: String
        # @param Assignment: 存储着分配给该消费者的 partition 信息
        # @type Assignment: :class:`Tencentcloud::Ckafka.v20190819.models.Assignment`

        attr_accessor :MemberId, :ClientId, :ClientHost, :Assignment
        
        def initialize(memberid=nil, clientid=nil, clienthost=nil, assignment=nil)
          @MemberId = memberid
          @ClientId = clientid
          @ClientHost = clienthost
          @Assignment = assignment
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @ClientId = params['ClientId']
          @ClientHost = params['ClientHost']
          unless params['Assignment'].nil?
            @Assignment = Assignment.new.deserialize(params['Assignment'])
          end
        end
      end

      # GroupInfo返回数据的实体
      class GroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 错误码，正常为0
        # @type ErrorCode: String
        # @param State: group 状态描述（常见的为 Empty、Stable、Dead 三种状态）：
        # Dead：消费分组不存在
        # Empty：消费分组，当前没有任何消费者订阅
        # PreparingRebalance：消费分组处于 rebalance 状态
        # CompletingRebalance：消费分组处于 rebalance 状态
        # Stable：消费分组中各个消费者已经加入，处于稳定状态
        # @type State: String
        # @param ProtocolType: 消费分组选择的协议类型正常的消费者一般为 consumer 但有些系统采用了自己的协议如 kafka-connect 用的就是 connect。只有标准的 consumer 协议，本接口才知道具体的分配方式的格式，才能解析到具体的 partition 的分配情况
        # @type ProtocolType: String
        # @param Protocol: 消费者 partition 分配算法常见的有如下几种(Kafka 消费者 SDK 默认的选择项为 range)：range、 roundrobin、 sticky
        # @type Protocol: String
        # @param Members: 仅当 state 为 Stable 且 protocol_type 为 consumer 时， 该数组才包含信息
        # @type Members: Array
        # @param Group: Kafka 消费分组
        # @type Group: String

        attr_accessor :ErrorCode, :State, :ProtocolType, :Protocol, :Members, :Group
        
        def initialize(errorcode=nil, state=nil, protocoltype=nil, protocol=nil, members=nil, group=nil)
          @ErrorCode = errorcode
          @State = state
          @ProtocolType = protocoltype
          @Protocol = protocol
          @Members = members
          @Group = group
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @State = params['State']
          @ProtocolType = params['ProtocolType']
          @Protocol = params['Protocol']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              @Members << GroupInfoMember.new.deserialize(i)
            end
          end
          @Group = params['Group']
        end
      end

      # GroupInfo内部topic对象
      class GroupInfoTopics < TencentCloud::Common::AbstractModel
        # @param Topic: 分配的 topic 名称
        # @type Topic: String
        # @param Partitions: 分配的 partition 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array

        attr_accessor :Topic, :Partitions
        
        def initialize(topic=nil, partitions=nil)
          @Topic = topic
          @Partitions = partitions
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Partitions = params['Partitions']
        end
      end

      # 组偏移量分区对象
      class GroupOffsetPartition < TencentCloud::Common::AbstractModel
        # @param Partition: topic 的 partitionId
        # @type Partition: Integer
        # @param Offset: consumer 提交的 offset 位置
        # @type Offset: Integer
        # @param Metadata: 支持消费者提交消息时，传入 metadata 作为它用，当前一般为空字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadata: String
        # @param ErrorCode: 错误码
        # @type ErrorCode: Integer
        # @param LogEndOffset: 当前 partition 最新的 offset
        # @type LogEndOffset: Integer
        # @param Lag: 未消费的消息个数
        # @type Lag: Integer

        attr_accessor :Partition, :Offset, :Metadata, :ErrorCode, :LogEndOffset, :Lag
        
        def initialize(partition=nil, offset=nil, metadata=nil, errorcode=nil, logendoffset=nil, lag=nil)
          @Partition = partition
          @Offset = offset
          @Metadata = metadata
          @ErrorCode = errorcode
          @LogEndOffset = logendoffset
          @Lag = lag
        end

        def deserialize(params)
          @Partition = params['Partition']
          @Offset = params['Offset']
          @Metadata = params['Metadata']
          @ErrorCode = params['ErrorCode']
          @LogEndOffset = params['LogEndOffset']
          @Lag = params['Lag']
        end
      end

      # 消费组偏移量返回结果
      class GroupOffsetResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合调节的总结果数
        # @type TotalCount: Integer
        # @param TopicList: 该主题分区数组，其中每个元素为一个 json object
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array

        attr_accessor :TotalCount, :TopicList
        
        def initialize(totalcount=nil, topiclist=nil)
          @TotalCount = totalcount
          @TopicList = topiclist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              @TopicList << GroupOffsetTopic.new.deserialize(i)
            end
          end
        end
      end

      # 消费分组主题对象
      class GroupOffsetTopic < TencentCloud::Common::AbstractModel
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Partitions: 该主题分区数组，其中每个元素为一个 json object
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array

        attr_accessor :Topic, :Partitions
        
        def initialize(topic=nil, partitions=nil)
          @Topic = topic
          @Partitions = partitions
        end

        def deserialize(params)
          @Topic = params['Topic']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              @Partitions << GroupOffsetPartition.new.deserialize(i)
            end
          end
        end
      end

      # DescribeGroup的返回
      class GroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 计数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param GroupList: GroupList
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupList: Array

        attr_accessor :TotalCount, :GroupList
        
        def initialize(totalcount=nil, grouplist=nil)
          @TotalCount = totalcount
          @GroupList = grouplist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GroupList'].nil?
            @GroupList = []
            params['GroupList'].each do |i|
              @GroupList << DescribeGroup.new.deserialize(i)
            end
          end
        end
      end

      # 实例对象
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Status: 实例的状态。0：创建中，1：运行中，2：删除中 ， 5 隔离中，-1 创建失败
        # @type Status: Integer
        # @param IfCommunity: 是否开源实例。开源：true，不开源：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfCommunity: Boolean

        attr_accessor :InstanceId, :InstanceName, :Status, :IfCommunity
        
        def initialize(instanceid=nil, instancename=nil, status=nil, ifcommunity=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @IfCommunity = ifcommunity
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @IfCommunity = params['IfCommunity']
        end
      end

      # 实例属性返回结果对象
      class InstanceAttributesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param VipList: 接入点 VIP 列表信息
        # @type VipList: Array
        # @param Vip: 虚拟IP
        # @type Vip: String
        # @param Vport: 虚拟端口
        # @type Vport: String
        # @param Status: 实例的状态。0：创建中，1：运行中，2：删除中
        # @type Status: Integer
        # @param Bandwidth: 实例带宽，单位：Mbps
        # @type Bandwidth: Integer
        # @param DiskSize: 实例的存储大小，单位：GB
        # @type DiskSize: Integer
        # @param ZoneId: 可用区
        # @type ZoneId: Integer
        # @param VpcId: VPC 的 ID，为空表示是基础网络
        # @type VpcId: String
        # @param SubnetId: 子网 ID， 为空表示基础网络
        # @type SubnetId: String
        # @param Healthy: 实例健康状态， 1：健康，2：告警，3：异常
        # @type Healthy: Integer
        # @param HealthyMessage: 实例健康信息，当前会展示磁盘利用率，最大长度为256
        # @type HealthyMessage: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param MsgRetentionTime: 消息保存时间,单位为分钟
        # @type MsgRetentionTime: Integer
        # @param Config: 自动创建 Topic 配置， 若该字段为空，则表示未开启自动创建
        # @type Config: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceConfigDO`
        # @param RemainderPartitions: 剩余创建分区数
        # @type RemainderPartitions: Integer
        # @param RemainderTopics: 剩余创建主题数
        # @type RemainderTopics: Integer
        # @param CreatedPartitions: 当前创建分区数
        # @type CreatedPartitions: Integer
        # @param CreatedTopics: 当前创建主题数
        # @type CreatedTopics: Integer
        # @param Tags: 标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: Integer
        # @param ZoneIds: 跨可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIds: Array
        # @param Version: kafka版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param MaxGroupNum: 最大分组数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxGroupNum: Integer
        # @param Cvm: 售卖类型,0:标准版,1:专业版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cvm: Integer
        # @param InstanceType: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param Features: 表示该实例支持的特性。FEATURE_SUBNET_ACL:表示acl策略支持设置子网。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Features: Array
        # @param RetentionTimeConfig: 动态消息保留策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionTimeConfig: :class:`Tencentcloud::Ckafka.v20190819.models.DynamicRetentionTime`

        attr_accessor :InstanceId, :InstanceName, :VipList, :Vip, :Vport, :Status, :Bandwidth, :DiskSize, :ZoneId, :VpcId, :SubnetId, :Healthy, :HealthyMessage, :CreateTime, :MsgRetentionTime, :Config, :RemainderPartitions, :RemainderTopics, :CreatedPartitions, :CreatedTopics, :Tags, :ExpireTime, :ZoneIds, :Version, :MaxGroupNum, :Cvm, :InstanceType, :Features, :RetentionTimeConfig
        
        def initialize(instanceid=nil, instancename=nil, viplist=nil, vip=nil, vport=nil, status=nil, bandwidth=nil, disksize=nil, zoneid=nil, vpcid=nil, subnetid=nil, healthy=nil, healthymessage=nil, createtime=nil, msgretentiontime=nil, config=nil, remainderpartitions=nil, remaindertopics=nil, createdpartitions=nil, createdtopics=nil, tags=nil, expiretime=nil, zoneids=nil, version=nil, maxgroupnum=nil, cvm=nil, instancetype=nil, features=nil, retentiontimeconfig=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @VipList = viplist
          @Vip = vip
          @Vport = vport
          @Status = status
          @Bandwidth = bandwidth
          @DiskSize = disksize
          @ZoneId = zoneid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Healthy = healthy
          @HealthyMessage = healthymessage
          @CreateTime = createtime
          @MsgRetentionTime = msgretentiontime
          @Config = config
          @RemainderPartitions = remainderpartitions
          @RemainderTopics = remaindertopics
          @CreatedPartitions = createdpartitions
          @CreatedTopics = createdtopics
          @Tags = tags
          @ExpireTime = expiretime
          @ZoneIds = zoneids
          @Version = version
          @MaxGroupNum = maxgroupnum
          @Cvm = cvm
          @InstanceType = instancetype
          @Features = features
          @RetentionTimeConfig = retentiontimeconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          unless params['VipList'].nil?
            @VipList = []
            params['VipList'].each do |i|
              @VipList << VipEntity.new.deserialize(i)
            end
          end
          @Vip = params['Vip']
          @Vport = params['Vport']
          @Status = params['Status']
          @Bandwidth = params['Bandwidth']
          @DiskSize = params['DiskSize']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Healthy = params['Healthy']
          @HealthyMessage = params['HealthyMessage']
          @CreateTime = params['CreateTime']
          @MsgRetentionTime = params['MsgRetentionTime']
          unless params['Config'].nil?
            @Config = InstanceConfigDO.new.deserialize(params['Config'])
          end
          @RemainderPartitions = params['RemainderPartitions']
          @RemainderTopics = params['RemainderTopics']
          @CreatedPartitions = params['CreatedPartitions']
          @CreatedTopics = params['CreatedTopics']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
          @ExpireTime = params['ExpireTime']
          @ZoneIds = params['ZoneIds']
          @Version = params['Version']
          @MaxGroupNum = params['MaxGroupNum']
          @Cvm = params['Cvm']
          @InstanceType = params['InstanceType']
          @Features = params['Features']
          unless params['RetentionTimeConfig'].nil?
            @RetentionTimeConfig = DynamicRetentionTime.new.deserialize(params['RetentionTimeConfig'])
          end
        end
      end

      # 实例配置实体
      class InstanceConfigDO < TencentCloud::Common::AbstractModel
        # @param AutoCreateTopicsEnable: 是否自动创建主题
        # @type AutoCreateTopicsEnable: Boolean
        # @param DefaultNumPartitions: 分区数
        # @type DefaultNumPartitions: Integer
        # @param DefaultReplicationFactor: 默认的复制Factor
        # @type DefaultReplicationFactor: Integer

        attr_accessor :AutoCreateTopicsEnable, :DefaultNumPartitions, :DefaultReplicationFactor
        
        def initialize(autocreatetopicsenable=nil, defaultnumpartitions=nil, defaultreplicationfactor=nil)
          @AutoCreateTopicsEnable = autocreatetopicsenable
          @DefaultNumPartitions = defaultnumpartitions
          @DefaultReplicationFactor = defaultreplicationfactor
        end

        def deserialize(params)
          @AutoCreateTopicsEnable = params['AutoCreateTopicsEnable']
          @DefaultNumPartitions = params['DefaultNumPartitions']
          @DefaultReplicationFactor = params['DefaultReplicationFactor']
        end
      end

      # 实例详情
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Vip: 访问实例的vip 信息
        # @type Vip: String
        # @param Vport: 访问实例的端口信息
        # @type Vport: String
        # @param VipList: 虚拟IP列表
        # @type VipList: Array
        # @param Status: 实例的状态。0：创建中，1：运行中，2：删除中：5隔离中， -1 创建失败
        # @type Status: Integer
        # @param Bandwidth: 实例带宽，单位Mbps
        # @type Bandwidth: Integer
        # @param DiskSize: 实例的存储大小，单位GB
        # @type DiskSize: Integer
        # @param ZoneId: 可用区域ID
        # @type ZoneId: Integer
        # @param VpcId: vpcId，如果为空，说明是基础网络
        # @type VpcId: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param RenewFlag: 实例是否续费，int  枚举值：1表示自动续费，2表示明确不自动续费
        # @type RenewFlag: Integer
        # @param Healthy: 实例状态 int：0表示健康，1表示告警，2 表示实例状态异常
        # @type Healthy: Integer
        # @param HealthyMessage: 实例状态信息
        # @type HealthyMessage: String
        # @param CreateTime: 实例创建时间时间
        # @type CreateTime: Integer
        # @param ExpireTime: 实例过期时间
        # @type ExpireTime: Integer
        # @param IsInternal: 是否为内部客户。值为1 表示内部客户
        # @type IsInternal: Integer
        # @param TopicNum: Topic个数
        # @type TopicNum: Integer
        # @param Tags: 标识tag
        # @type Tags: Array
        # @param Version: kafka版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param ZoneIds: 跨可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIds: Array
        # @param Cvm: ckafka售卖类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cvm: Integer
        # @param InstanceType: ckafka实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param DiskType: 磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param MaxTopicNumber: 当前规格最大Topic数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxTopicNumber: Integer
        # @param MaxPartitionNumber: 当前规格最大Partition数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPartitionNumber: Integer
        # @param RebalanceTime: 计划升级配置时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RebalanceTime: String

        attr_accessor :InstanceId, :InstanceName, :Vip, :Vport, :VipList, :Status, :Bandwidth, :DiskSize, :ZoneId, :VpcId, :SubnetId, :RenewFlag, :Healthy, :HealthyMessage, :CreateTime, :ExpireTime, :IsInternal, :TopicNum, :Tags, :Version, :ZoneIds, :Cvm, :InstanceType, :DiskType, :MaxTopicNumber, :MaxPartitionNumber, :RebalanceTime
        
        def initialize(instanceid=nil, instancename=nil, vip=nil, vport=nil, viplist=nil, status=nil, bandwidth=nil, disksize=nil, zoneid=nil, vpcid=nil, subnetid=nil, renewflag=nil, healthy=nil, healthymessage=nil, createtime=nil, expiretime=nil, isinternal=nil, topicnum=nil, tags=nil, version=nil, zoneids=nil, cvm=nil, instancetype=nil, disktype=nil, maxtopicnumber=nil, maxpartitionnumber=nil, rebalancetime=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Vip = vip
          @Vport = vport
          @VipList = viplist
          @Status = status
          @Bandwidth = bandwidth
          @DiskSize = disksize
          @ZoneId = zoneid
          @VpcId = vpcid
          @SubnetId = subnetid
          @RenewFlag = renewflag
          @Healthy = healthy
          @HealthyMessage = healthymessage
          @CreateTime = createtime
          @ExpireTime = expiretime
          @IsInternal = isinternal
          @TopicNum = topicnum
          @Tags = tags
          @Version = version
          @ZoneIds = zoneids
          @Cvm = cvm
          @InstanceType = instancetype
          @DiskType = disktype
          @MaxTopicNumber = maxtopicnumber
          @MaxPartitionNumber = maxpartitionnumber
          @RebalanceTime = rebalancetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Vip = params['Vip']
          @Vport = params['Vport']
          unless params['VipList'].nil?
            @VipList = []
            params['VipList'].each do |i|
              @VipList << VipEntity.new.deserialize(i)
            end
          end
          @Status = params['Status']
          @Bandwidth = params['Bandwidth']
          @DiskSize = params['DiskSize']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @RenewFlag = params['RenewFlag']
          @Healthy = params['Healthy']
          @HealthyMessage = params['HealthyMessage']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @IsInternal = params['IsInternal']
          @TopicNum = params['TopicNum']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
          @Version = params['Version']
          @ZoneIds = params['ZoneIds']
          @Cvm = params['Cvm']
          @InstanceType = params['InstanceType']
          @DiskType = params['DiskType']
          @MaxTopicNumber = params['MaxTopicNumber']
          @MaxPartitionNumber = params['MaxPartitionNumber']
          @RebalanceTime = params['RebalanceTime']
        end
      end

      # 实例详情返回结果
      class InstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例总数
        # @type TotalCount: Integer
        # @param InstanceList: 符合条件的实例详情列表
        # @type InstanceList: Array

        attr_accessor :TotalCount, :InstanceList
        
        def initialize(totalcount=nil, instancelist=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              @InstanceList << InstanceDetail.new.deserialize(i)
            end
          end
        end
      end

      # 聚合的实例状态返回结果
      class InstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: 符合条件的实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 符合条件的结果总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :InstanceList, :TotalCount
        
        def initialize(instancelist=nil, totalcount=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              @InstanceList << Instance.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 操作型结果返回值
      class JgwOperateResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回的code，0为正常，非0为错误
        # @type ReturnCode: String
        # @param ReturnMessage: 成功消息
        # @type ReturnMessage: String
        # @param Data: 操作型返回的Data数据,可能有flowId等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ckafka.v20190819.models.OperateResponseData`

        attr_accessor :ReturnCode, :ReturnMessage, :Data
        
        def initialize(returncode=nil, returnmessage=nil, data=nil)
          @ReturnCode = returncode
          @ReturnMessage = returnmessage
          @Data = data
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMessage = params['ReturnMessage']
          unless params['Data'].nil?
            @Data = OperateResponseData.new.deserialize(params['Data'])
          end
        end
      end

      # ModifyGroupOffsets请求参数结构体
      class ModifyGroupOffsetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: kafka实例id
        # @type InstanceId: String
        # @param Group: kafka 消费分组
        # @type Group: String
        # @param Strategy: 重置offset的策略，入参含义 0. 对齐shift-by参数，代表把offset向前或向后移动shift条 1. 对齐参考(by-duration,to-datetime,to-earliest,to-latest),代表把offset移动到指定timestamp的位置 2. 对齐参考(to-offset)，代表把offset移动到指定的offset位置
        # @type Strategy: Integer
        # @param Topics: 表示需要重置的topics， 不填表示全部
        # @type Topics: Array
        # @param Shift: 当strategy为0时，必须包含该字段，可以大于零代表会把offset向后移动shift条，小于零则将offset向前回溯shift条数。正确重置后新的offset应该是(old_offset + shift)，需要注意的是如果新的offset小于partition的earliest则会设置为earliest，如果大于partition 的latest则会设置为latest
        # @type Shift: Integer
        # @param ShiftTimestamp: 单位ms。当strategy为1时，必须包含该字段，其中-2表示重置offset到最开始的位置，-1表示重置到最新的位置(相当于清空)，其它值则代表指定的时间，会获取topic中指定时间的offset然后进行重置，需要注意的时，如果指定的时间不存在消息，则获取最末尾的offset。
        # @type ShiftTimestamp: Integer
        # @param Offset: 需要重新设置的offset位置。当strategy为2，必须包含该字段。
        # @type Offset: Integer
        # @param Partitions: 需要重新设置的partition的列表，如果没有指定Topics参数。则重置全部topics的对应的Partition列表里的partition。指定Topics时则重置指定的topic列表的对应的Partitions列表的partition。
        # @type Partitions: Array

        attr_accessor :InstanceId, :Group, :Strategy, :Topics, :Shift, :ShiftTimestamp, :Offset, :Partitions
        
        def initialize(instanceid=nil, group=nil, strategy=nil, topics=nil, shift=nil, shifttimestamp=nil, offset=nil, partitions=nil)
          @InstanceId = instanceid
          @Group = group
          @Strategy = strategy
          @Topics = topics
          @Shift = shift
          @ShiftTimestamp = shifttimestamp
          @Offset = offset
          @Partitions = partitions
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Group = params['Group']
          @Strategy = params['Strategy']
          @Topics = params['Topics']
          @Shift = params['Shift']
          @ShiftTimestamp = params['ShiftTimestamp']
          @Offset = params['Offset']
          @Partitions = params['Partitions']
        end
      end

      # ModifyGroupOffsets返回参数结构体
      class ModifyGroupOffsetsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改实例属性的配置对象
      class ModifyInstanceAttributesConfig < TencentCloud::Common::AbstractModel
        # @param AutoCreateTopicEnable: 自动创建 true 表示开启，false 表示不开启
        # @type AutoCreateTopicEnable: Boolean
        # @param DefaultNumPartitions: 可选，如果auto.create.topic.enable设置为true没有设置该值时，默认设置为3
        # @type DefaultNumPartitions: Integer
        # @param DefaultReplicationFactor: 如歌auto.create.topic.enable设置为true没有指定该值时默认设置为2
        # @type DefaultReplicationFactor: Integer

        attr_accessor :AutoCreateTopicEnable, :DefaultNumPartitions, :DefaultReplicationFactor
        
        def initialize(autocreatetopicenable=nil, defaultnumpartitions=nil, defaultreplicationfactor=nil)
          @AutoCreateTopicEnable = autocreatetopicenable
          @DefaultNumPartitions = defaultnumpartitions
          @DefaultReplicationFactor = defaultreplicationfactor
        end

        def deserialize(params)
          @AutoCreateTopicEnable = params['AutoCreateTopicEnable']
          @DefaultNumPartitions = params['DefaultNumPartitions']
          @DefaultReplicationFactor = params['DefaultReplicationFactor']
        end
      end

      # ModifyInstanceAttributes请求参数结构体
      class ModifyInstanceAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param MsgRetentionTime: 实例日志的最长保留时间，单位分钟，最大30天，0代表不开启日志保留时间回收策略
        # @type MsgRetentionTime: Integer
        # @param InstanceName: 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type InstanceName: String
        # @param Config: 实例配置
        # @type Config: :class:`Tencentcloud::Ckafka.v20190819.models.ModifyInstanceAttributesConfig`
        # @param DynamicRetentionConfig: 动态消息保留策略配置
        # @type DynamicRetentionConfig: :class:`Tencentcloud::Ckafka.v20190819.models.DynamicRetentionTime`
        # @param RebalanceTime: 修改升配置rebalance时间
        # @type RebalanceTime: Integer

        attr_accessor :InstanceId, :MsgRetentionTime, :InstanceName, :Config, :DynamicRetentionConfig, :RebalanceTime
        
        def initialize(instanceid=nil, msgretentiontime=nil, instancename=nil, config=nil, dynamicretentionconfig=nil, rebalancetime=nil)
          @InstanceId = instanceid
          @MsgRetentionTime = msgretentiontime
          @InstanceName = instancename
          @Config = config
          @DynamicRetentionConfig = dynamicretentionconfig
          @RebalanceTime = rebalancetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MsgRetentionTime = params['MsgRetentionTime']
          @InstanceName = params['InstanceName']
          unless params['Config'].nil?
            @Config = ModifyInstanceAttributesConfig.new.deserialize(params['Config'])
          end
          unless params['DynamicRetentionConfig'].nil?
            @DynamicRetentionConfig = DynamicRetentionTime.new.deserialize(params['DynamicRetentionConfig'])
          end
          @RebalanceTime = params['RebalanceTime']
        end
      end

      # ModifyInstanceAttributes返回参数结构体
      class ModifyInstanceAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyPassword请求参数结构体
      class ModifyPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Name: 用户名称
        # @type Name: String
        # @param Password: 用户当前密码
        # @type Password: String
        # @param PasswordNew: 用户新密码
        # @type PasswordNew: String

        attr_accessor :InstanceId, :Name, :Password, :PasswordNew
        
        def initialize(instanceid=nil, name=nil, password=nil, passwordnew=nil)
          @InstanceId = instanceid
          @Name = name
          @Password = password
          @PasswordNew = passwordnew
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Password = params['Password']
          @PasswordNew = params['PasswordNew']
        end
      end

      # ModifyPassword返回参数结构体
      class ModifyPasswordResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTopicAttributes请求参数结构体
      class ModifyTopicAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param Note: 主题备注，是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线-。
        # @type Note: String
        # @param EnableWhiteList: IP 白名单开关，1：打开；0：关闭。
        # @type EnableWhiteList: Integer
        # @param MinInsyncReplicas: 默认为1。
        # @type MinInsyncReplicas: Integer
        # @param UncleanLeaderElectionEnable: 默认为 0，0：false；1：true。
        # @type UncleanLeaderElectionEnable: Integer
        # @param RetentionMs: 消息保留时间，单位：ms，当前最小值为60000ms。
        # @type RetentionMs: Integer
        # @param SegmentMs: Segment 分片滚动的时长，单位：ms，当前最小为86400000ms。
        # @type SegmentMs: Integer
        # @param MaxMessageBytes: 主题消息最大值，单位为 Byte，最大值为8388608Byte（即8MB）。
        # @type MaxMessageBytes: Integer
        # @param CleanUpPolicy: 消息删除策略，可以选择delete 或者compact
        # @type CleanUpPolicy: String

        attr_accessor :InstanceId, :TopicName, :Note, :EnableWhiteList, :MinInsyncReplicas, :UncleanLeaderElectionEnable, :RetentionMs, :SegmentMs, :MaxMessageBytes, :CleanUpPolicy
        
        def initialize(instanceid=nil, topicname=nil, note=nil, enablewhitelist=nil, mininsyncreplicas=nil, uncleanleaderelectionenable=nil, retentionms=nil, segmentms=nil, maxmessagebytes=nil, cleanuppolicy=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @Note = note
          @EnableWhiteList = enablewhitelist
          @MinInsyncReplicas = mininsyncreplicas
          @UncleanLeaderElectionEnable = uncleanleaderelectionenable
          @RetentionMs = retentionms
          @SegmentMs = segmentms
          @MaxMessageBytes = maxmessagebytes
          @CleanUpPolicy = cleanuppolicy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @Note = params['Note']
          @EnableWhiteList = params['EnableWhiteList']
          @MinInsyncReplicas = params['MinInsyncReplicas']
          @UncleanLeaderElectionEnable = params['UncleanLeaderElectionEnable']
          @RetentionMs = params['RetentionMs']
          @SegmentMs = params['SegmentMs']
          @MaxMessageBytes = params['MaxMessageBytes']
          @CleanUpPolicy = params['CleanUpPolicy']
        end
      end

      # ModifyTopicAttributes返回参数结构体
      class ModifyTopicAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 操作类型返回的Data结构
      class OperateResponseData < TencentCloud::Common::AbstractModel
        # @param FlowId: FlowId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer

        attr_accessor :FlowId
        
        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # 分区实体
      class Partition < TencentCloud::Common::AbstractModel
        # @param PartitionId: 分区ID
        # @type PartitionId: Integer

        attr_accessor :PartitionId
        
        def initialize(partitionid=nil)
          @PartitionId = partitionid
        end

        def deserialize(params)
          @PartitionId = params['PartitionId']
        end
      end

      # 分区和位移
      class PartitionOffset < TencentCloud::Common::AbstractModel
        # @param Partition: Partition,例如"0"或"1"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partition: String
        # @param Offset: Offset,例如100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer

        attr_accessor :Partition, :Offset
        
        def initialize(partition=nil, offset=nil)
          @Partition = partition
          @Offset = offset
        end

        def deserialize(params)
          @Partition = params['Partition']
          @Offset = params['Offset']
        end
      end

      # 消息价格实体
      class Price < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 折扣价
        # @type RealTotalCost: Float
        # @param TotalCost: 原价
        # @type TotalCost: Float

        attr_accessor :RealTotalCost, :TotalCost
        
        def initialize(realtotalcost=nil, totalcost=nil)
          @RealTotalCost = realtotalcost
          @TotalCost = totalcost
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
          @TotalCost = params['TotalCost']
        end
      end

      # 地域实体对象
      class Region < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param AreaName: 区域名称
        # @type AreaName: String
        # @param RegionCode: 地域代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionCode: String
        # @param RegionCodeV3: 地域代码（V3版本）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionCodeV3: String
        # @param Support: NONE:默认值不支持任何特殊机型\nCVM:支持CVM类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Support: String
        # @param Ipv6: 是否支持ipv6, 0：表示不支持，1：表示支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6: Integer
        # @param MultiZone: 是否支持跨可用区, 0：表示不支持，1：表示支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiZone: Integer

        attr_accessor :RegionId, :RegionName, :AreaName, :RegionCode, :RegionCodeV3, :Support, :Ipv6, :MultiZone
        
        def initialize(regionid=nil, regionname=nil, areaname=nil, regioncode=nil, regioncodev3=nil, support=nil, ipv6=nil, multizone=nil)
          @RegionId = regionid
          @RegionName = regionname
          @AreaName = areaname
          @RegionCode = regioncode
          @RegionCodeV3 = regioncodev3
          @Support = support
          @Ipv6 = ipv6
          @MultiZone = multizone
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @AreaName = params['AreaName']
          @RegionCode = params['RegionCode']
          @RegionCodeV3 = params['RegionCodeV3']
          @Support = params['Support']
          @Ipv6 = params['Ipv6']
          @MultiZone = params['MultiZone']
        end
      end

      # 路由实体对象
      class Route < TencentCloud::Common::AbstractModel
        # @param AccessType: 实例接入方式
        # 0：PLAINTEXT (明文方式，没有带用户信息老版本及社区版本都支持)
        # 1：SASL_PLAINTEXT（明文方式，不过在数据开始时，会通过SASL方式登录鉴权，仅社区版本支持）
        # 2：SSL（SSL加密通信，没有带用户信息，老版本及社区版本都支持）
        # 3：SASL_SSL（SSL加密通信，在数据开始时，会通过SASL方式登录鉴权，仅社区版本支持）
        # @type AccessType: Integer
        # @param RouteId: 路由ID
        # @type RouteId: Integer
        # @param VipType: vip网络类型（1:外网TGW  2:基础网络 3:VPC网络 4:腾讯云支持环境(一般用于内部实例) 5:SSL外网访问方式访问 6:黑石环境vpc）
        # @type VipType: Integer
        # @param VipList: 虚拟IP列表
        # @type VipList: Array
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param DomainPort: 域名port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainPort: Integer

        attr_accessor :AccessType, :RouteId, :VipType, :VipList, :Domain, :DomainPort
        
        def initialize(accesstype=nil, routeid=nil, viptype=nil, viplist=nil, domain=nil, domainport=nil)
          @AccessType = accesstype
          @RouteId = routeid
          @VipType = viptype
          @VipList = viplist
          @Domain = domain
          @DomainPort = domainport
        end

        def deserialize(params)
          @AccessType = params['AccessType']
          @RouteId = params['RouteId']
          @VipType = params['VipType']
          unless params['VipList'].nil?
            @VipList = []
            params['VipList'].each do |i|
              @VipList << VipEntity.new.deserialize(i)
            end
          end
          @Domain = params['Domain']
          @DomainPort = params['DomainPort']
        end
      end

      # 路由信息返回对象
      class RouteResponse < TencentCloud::Common::AbstractModel
        # @param Routers: 路由信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Routers: Array

        attr_accessor :Routers
        
        def initialize(routers=nil)
          @Routers = routers
        end

        def deserialize(params)
          unless params['Routers'].nil?
            @Routers = []
            params['Routers'].each do |i|
              @Routers << Route.new.deserialize(i)
            end
          end
        end
      end

      # 订阅信息实体
      class SubscribedInfo < TencentCloud::Common::AbstractModel
        # @param TopicName: 订阅的主题名
        # @type TopicName: String
        # @param Partition: 订阅的分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partition: Array
        # @param PartitionOffset: 分区offset信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionOffset: Array
        # @param TopicId: 订阅的主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String

        attr_accessor :TopicName, :Partition, :PartitionOffset, :TopicId
        
        def initialize(topicname=nil, partition=nil, partitionoffset=nil, topicid=nil)
          @TopicName = topicname
          @Partition = partition
          @PartitionOffset = partitionoffset
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @Partition = params['Partition']
          unless params['PartitionOffset'].nil?
            @PartitionOffset = []
            params['PartitionOffset'].each do |i|
              @PartitionOffset << PartitionOffset.new.deserialize(i)
            end
          end
          @TopicId = params['TopicId']
        end
      end

      # 实例详情中的标签对象
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的key
        # @type TagKey: String
        # @param TagValue: 标签的值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 返回的topic对象
      class Topic < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题的ID
        # @type TopicId: String
        # @param TopicName: 主题的名称
        # @type TopicName: String
        # @param Note: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String

        attr_accessor :TopicId, :TopicName, :Note
        
        def initialize(topicid=nil, topicname=nil, note=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Note = note
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Note = params['Note']
        end
      end

      # 主题属性返回结果实体
      class TopicAttributesResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题 ID
        # @type TopicId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param Note: 主题备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String
        # @param PartitionNum: 分区个数
        # @type PartitionNum: Integer
        # @param EnableWhiteList: IP 白名单开关，1：打开； 0：关闭
        # @type EnableWhiteList: Integer
        # @param IpWhiteList: IP 白名单列表
        # @type IpWhiteList: Array
        # @param Config: topic 配置数组
        # @type Config: :class:`Tencentcloud::Ckafka.v20190819.models.Config`
        # @param Partitions: 分区详情
        # @type Partitions: Array

        attr_accessor :TopicId, :CreateTime, :Note, :PartitionNum, :EnableWhiteList, :IpWhiteList, :Config, :Partitions
        
        def initialize(topicid=nil, createtime=nil, note=nil, partitionnum=nil, enablewhitelist=nil, ipwhitelist=nil, config=nil, partitions=nil)
          @TopicId = topicid
          @CreateTime = createtime
          @Note = note
          @PartitionNum = partitionnum
          @EnableWhiteList = enablewhitelist
          @IpWhiteList = ipwhitelist
          @Config = config
          @Partitions = partitions
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @CreateTime = params['CreateTime']
          @Note = params['Note']
          @PartitionNum = params['PartitionNum']
          @EnableWhiteList = params['EnableWhiteList']
          @IpWhiteList = params['IpWhiteList']
          unless params['Config'].nil?
            @Config = Config.new.deserialize(params['Config'])
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              @Partitions << TopicPartitionDO.new.deserialize(i)
            end
          end
        end
      end

      # 主题详情
      class TopicDetail < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param TopicId: 主题ID
        # @type TopicId: String
        # @param PartitionNum: 分区数
        # @type PartitionNum: Integer
        # @param ReplicaNum: 副本数
        # @type ReplicaNum: Integer
        # @param Note: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param EnableWhiteList: 是否开启ip鉴权白名单，true表示开启，false表示不开启
        # @type EnableWhiteList: Boolean
        # @param IpWhiteListCount: ip白名单中ip个数
        # @type IpWhiteListCount: Integer
        # @param ForwardCosBucket: 数据备份cos bucket: 转存到cos 的bucket地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForwardCosBucket: String
        # @param ForwardStatus: 数据备份cos 状态： 1 不开启数据备份，0 开启数据备份
        # @type ForwardStatus: Integer
        # @param ForwardInterval: 数据备份到cos的周期频率
        # @type ForwardInterval: Integer
        # @param Config: 高级配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Ckafka.v20190819.models.Config`
        # @param RetentionTimeConfig: 消息保留时间配置(用于动态配置变更记录)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionTimeConfig: :class:`Tencentcloud::Ckafka.v20190819.models.TopicRetentionTimeConfigRsp`

        attr_accessor :TopicName, :TopicId, :PartitionNum, :ReplicaNum, :Note, :CreateTime, :EnableWhiteList, :IpWhiteListCount, :ForwardCosBucket, :ForwardStatus, :ForwardInterval, :Config, :RetentionTimeConfig
        
        def initialize(topicname=nil, topicid=nil, partitionnum=nil, replicanum=nil, note=nil, createtime=nil, enablewhitelist=nil, ipwhitelistcount=nil, forwardcosbucket=nil, forwardstatus=nil, forwardinterval=nil, config=nil, retentiontimeconfig=nil)
          @TopicName = topicname
          @TopicId = topicid
          @PartitionNum = partitionnum
          @ReplicaNum = replicanum
          @Note = note
          @CreateTime = createtime
          @EnableWhiteList = enablewhitelist
          @IpWhiteListCount = ipwhitelistcount
          @ForwardCosBucket = forwardcosbucket
          @ForwardStatus = forwardstatus
          @ForwardInterval = forwardinterval
          @Config = config
          @RetentionTimeConfig = retentiontimeconfig
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @PartitionNum = params['PartitionNum']
          @ReplicaNum = params['ReplicaNum']
          @Note = params['Note']
          @CreateTime = params['CreateTime']
          @EnableWhiteList = params['EnableWhiteList']
          @IpWhiteListCount = params['IpWhiteListCount']
          @ForwardCosBucket = params['ForwardCosBucket']
          @ForwardStatus = params['ForwardStatus']
          @ForwardInterval = params['ForwardInterval']
          unless params['Config'].nil?
            @Config = Config.new.deserialize(params['Config'])
          end
          unless params['RetentionTimeConfig'].nil?
            @RetentionTimeConfig = TopicRetentionTimeConfigRsp.new.deserialize(params['RetentionTimeConfig'])
          end
        end
      end

      # 主题详情返回实体
      class TopicDetailResponse < TencentCloud::Common::AbstractModel
        # @param TopicList: 返回的主题详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param TotalCount: 符合条件的所有主题详情数量
        # @type TotalCount: Integer

        attr_accessor :TopicList, :TotalCount
        
        def initialize(topiclist=nil, totalcount=nil)
          @TopicList = topiclist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              @TopicList << TopicDetail.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 分区详情
      class TopicPartitionDO < TencentCloud::Common::AbstractModel
        # @param Partition: Partition ID
        # @type Partition: Integer
        # @param LeaderStatus: Leader 运行状态
        # @type LeaderStatus: Integer
        # @param IsrNum: ISR 个数
        # @type IsrNum: Integer
        # @param ReplicaNum: 副本个数
        # @type ReplicaNum: Integer

        attr_accessor :Partition, :LeaderStatus, :IsrNum, :ReplicaNum
        
        def initialize(partition=nil, leaderstatus=nil, isrnum=nil, replicanum=nil)
          @Partition = partition
          @LeaderStatus = leaderstatus
          @IsrNum = isrnum
          @ReplicaNum = replicanum
        end

        def deserialize(params)
          @Partition = params['Partition']
          @LeaderStatus = params['LeaderStatus']
          @IsrNum = params['IsrNum']
          @ReplicaNum = params['ReplicaNum']
        end
      end

      # 统一返回的TopicResponse
      class TopicResult < TencentCloud::Common::AbstractModel
        # @param TopicList: 返回的主题信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param TotalCount: 符合条件的 topic 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :TopicList, :TotalCount
        
        def initialize(topiclist=nil, totalcount=nil)
          @TopicList = topiclist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              @TopicList << Topic.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # Topic消息保留时间配置返回信息
      class TopicRetentionTimeConfigRsp < TencentCloud::Common::AbstractModel
        # @param Expect: 期望值，即用户配置的Topic消息保留时间(单位分钟)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expect: Integer
        # @param Current: 当前值，即当前生效值(可能存在动态调整，单位分钟)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Current: Integer
        # @param ModTimeStamp: 最近变更时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModTimeStamp: Integer

        attr_accessor :Expect, :Current, :ModTimeStamp
        
        def initialize(expect=nil, current=nil, modtimestamp=nil)
          @Expect = expect
          @Current = current
          @ModTimeStamp = modtimestamp
        end

        def deserialize(params)
          @Expect = params['Expect']
          @Current = params['Current']
          @ModTimeStamp = params['ModTimeStamp']
        end
      end

      # 用户实体
      class User < TencentCloud::Common::AbstractModel
        # @param UserId: 用户id
        # @type UserId: Integer
        # @param Name: 用户名称
        # @type Name: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: String

        attr_accessor :UserId, :Name, :CreateTime, :UpdateTime
        
        def initialize(userid=nil, name=nil, createtime=nil, updatetime=nil)
          @UserId = userid
          @Name = name
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 用户返回实体
      class UserResponse < TencentCloud::Common::AbstractModel
        # @param Users: 符合条件的用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array
        # @param TotalCount: 符合条件的总用户数
        # @type TotalCount: Integer

        attr_accessor :Users, :TotalCount
        
        def initialize(users=nil, totalcount=nil)
          @Users = users
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              @Users << User.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 虚拟IP实体
      class VipEntity < TencentCloud::Common::AbstractModel
        # @param Vip: 虚拟IP
        # @type Vip: String
        # @param Vport: 虚拟端口
        # @type Vport: String

        attr_accessor :Vip, :Vport
        
        def initialize(vip=nil, vport=nil)
          @Vip = vip
          @Vport = vport
        end

        def deserialize(params)
          @Vip = params['Vip']
          @Vport = params['Vport']
        end
      end

      # zone信息实体
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: zone的id
        # @type ZoneId: String
        # @param IsInternalApp: 是否内部APP
        # @type IsInternalApp: Integer
        # @param AppId: app id
        # @type AppId: Integer
        # @param Flag: 标识
        # @type Flag: Boolean
        # @param ZoneName: zone名称
        # @type ZoneName: String
        # @param ZoneStatus: zone状态
        # @type ZoneStatus: Integer
        # @param Exflag: 额外标识
        # @type Exflag: String
        # @param SoldOut: json对象，key为机型，value true为售罄，false为未售罄
        # @type SoldOut: String

        attr_accessor :ZoneId, :IsInternalApp, :AppId, :Flag, :ZoneName, :ZoneStatus, :Exflag, :SoldOut
        
        def initialize(zoneid=nil, isinternalapp=nil, appid=nil, flag=nil, zonename=nil, zonestatus=nil, exflag=nil, soldout=nil)
          @ZoneId = zoneid
          @IsInternalApp = isinternalapp
          @AppId = appid
          @Flag = flag
          @ZoneName = zonename
          @ZoneStatus = zonestatus
          @Exflag = exflag
          @SoldOut = soldout
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @IsInternalApp = params['IsInternalApp']
          @AppId = params['AppId']
          @Flag = params['Flag']
          @ZoneName = params['ZoneName']
          @ZoneStatus = params['ZoneStatus']
          @Exflag = params['Exflag']
          @SoldOut = params['SoldOut']
        end
      end

      # 查询kafka的zone信息返回的实体
      class ZoneResponse < TencentCloud::Common::AbstractModel
        # @param ZoneList: zone列表
        # @type ZoneList: Array
        # @param MaxBuyInstanceNum: 最大购买实例个数
        # @type MaxBuyInstanceNum: Integer
        # @param MaxBandwidth: 最大购买带宽 单位Mb/s
        # @type MaxBandwidth: Integer
        # @param UnitPrice: 后付费单位价格
        # @type UnitPrice: :class:`Tencentcloud::Ckafka.v20190819.models.Price`
        # @param MessagePrice: 后付费消息单价
        # @type MessagePrice: :class:`Tencentcloud::Ckafka.v20190819.models.Price`
        # @param ClusterInfo: 用户独占集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterInfo: Array
        # @param Standard: 购买标准版配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Standard: String
        # @param StandardS2: 购买标准版S2配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardS2: String
        # @param Profession: 购买专业版配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Profession: String
        # @param Physical: 购买物理独占版配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Physical: String

        attr_accessor :ZoneList, :MaxBuyInstanceNum, :MaxBandwidth, :UnitPrice, :MessagePrice, :ClusterInfo, :Standard, :StandardS2, :Profession, :Physical
        
        def initialize(zonelist=nil, maxbuyinstancenum=nil, maxbandwidth=nil, unitprice=nil, messageprice=nil, clusterinfo=nil, standard=nil, standards2=nil, profession=nil, physical=nil)
          @ZoneList = zonelist
          @MaxBuyInstanceNum = maxbuyinstancenum
          @MaxBandwidth = maxbandwidth
          @UnitPrice = unitprice
          @MessagePrice = messageprice
          @ClusterInfo = clusterinfo
          @Standard = standard
          @StandardS2 = standards2
          @Profession = profession
          @Physical = physical
        end

        def deserialize(params)
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              @ZoneList << ZoneInfo.new.deserialize(i)
            end
          end
          @MaxBuyInstanceNum = params['MaxBuyInstanceNum']
          @MaxBandwidth = params['MaxBandwidth']
          unless params['UnitPrice'].nil?
            @UnitPrice = Price.new.deserialize(params['UnitPrice'])
          end
          unless params['MessagePrice'].nil?
            @MessagePrice = Price.new.deserialize(params['MessagePrice'])
          end
          unless params['ClusterInfo'].nil?
            @ClusterInfo = []
            params['ClusterInfo'].each do |i|
              @ClusterInfo << ClusterInfo.new.deserialize(i)
            end
          end
          @Standard = params['Standard']
          @StandardS2 = params['StandardS2']
          @Profession = params['Profession']
          @Physical = params['Physical']
        end
      end

    end
  end
end

