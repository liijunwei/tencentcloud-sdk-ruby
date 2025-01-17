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
  module Cynosdb
    module V20190107
      # 数据库账号信息
      class Account < TencentCloud::Common::AbstractModel
        # @param AccountName: 数据库账号名
        # @type AccountName: String
        # @param Description: 数据库账号描述
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Host: 主机
        # @type Host: String

        attr_accessor :AccountName, :Description, :CreateTime, :UpdateTime, :Host
        
        def initialize(accountname=nil, description=nil, createtime=nil, updatetime=nil, host=nil)
          @AccountName = accountname
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Host = host
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Host = params['Host']
        end
      end

      # AddInstances请求参数结构体
      class AddInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Cpu: Cpu核数
        # @type Cpu: Integer
        # @param Memory: 内存
        # @type Memory: Integer
        # @param ReadOnlyCount: 新增只读实例数
        # @type ReadOnlyCount: Integer
        # @param InstanceGrpId: 实例组ID，在已有RO组中新增实例时使用，不传则新增RO组
        # @type InstanceGrpId: String
        # @param VpcId: 所属VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 所属子网ID
        # @type SubnetId: String
        # @param Port: 新增RO组时使用的Port
        # @type Port: Integer
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param OrderSource: 订单来源
        # @type OrderSource: String

        attr_accessor :ClusterId, :Cpu, :Memory, :ReadOnlyCount, :InstanceGrpId, :VpcId, :SubnetId, :Port, :InstanceName, :AutoVoucher, :DbType, :OrderSource
        
        def initialize(clusterid=nil, cpu=nil, memory=nil, readonlycount=nil, instancegrpid=nil, vpcid=nil, subnetid=nil, port=nil, instancename=nil, autovoucher=nil, dbtype=nil, ordersource=nil)
          @ClusterId = clusterid
          @Cpu = cpu
          @Memory = memory
          @ReadOnlyCount = readonlycount
          @InstanceGrpId = instancegrpid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Port = port
          @InstanceName = instancename
          @AutoVoucher = autovoucher
          @DbType = dbtype
          @OrderSource = ordersource
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @ReadOnlyCount = params['ReadOnlyCount']
          @InstanceGrpId = params['InstanceGrpId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Port = params['Port']
          @InstanceName = params['InstanceName']
          @AutoVoucher = params['AutoVoucher']
          @DbType = params['DbType']
          @OrderSource = params['OrderSource']
        end
      end

      # AddInstances返回参数结构体
      class AddInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水，一次开通一个冻结流水。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param DealNames: 后付费订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param ResourceIds: 发货资源id列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: Array
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :DealNames, :ResourceIds, :BigDealIds, :RequestId
        
        def initialize(tranid=nil, dealnames=nil, resourceids=nil, bigdealids=nil, requestid=nil)
          @TranId = tranid
          @DealNames = dealnames
          @ResourceIds = resourceids
          @BigDealIds = bigdealids
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @DealNames = params['DealNames']
          @ResourceIds = params['ResourceIds']
          @BigDealIds = params['BigDealIds']
          @RequestId = params['RequestId']
        end
      end

      # 数据库地址
      class Addr < TencentCloud::Common::AbstractModel
        # @param IP: IP
        # @type IP: String
        # @param Port: 端口
        # @type Port: Integer

        attr_accessor :IP, :Port
        
        def initialize(ip=nil, port=nil)
          @IP = ip
          @Port = port
        end

        def deserialize(params)
          @IP = params['IP']
          @Port = params['Port']
        end
      end

      # 备份文件信息
      class BackupFileInfo < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照文件ID，用于回滚
        # @type SnapshotId: Integer
        # @param FileName: 快照文件名
        # @type FileName: String
        # @param FileSize: 快照文件大小
        # @type FileSize: Integer
        # @param StartTime: 快照备份开始时间
        # @type StartTime: String
        # @param FinishTime: 快照备份完成时间
        # @type FinishTime: String
        # @param BackupType: 备份类型：snapshot，快照备份；timepoint，时间点备份
        # @type BackupType: String
        # @param BackupMethod: 备份方式：auto，自动备份；manual，手动备份
        # @type BackupMethod: String
        # @param BackupStatus: 备份文件状态：success：备份成功；fail：备份失败；creating：备份文件创建中；deleting：备份文件删除中
        # @type BackupStatus: String
        # @param SnapshotTime: 备份文件时间
        # @type SnapshotTime: String

        attr_accessor :SnapshotId, :FileName, :FileSize, :StartTime, :FinishTime, :BackupType, :BackupMethod, :BackupStatus, :SnapshotTime
        
        def initialize(snapshotid=nil, filename=nil, filesize=nil, starttime=nil, finishtime=nil, backuptype=nil, backupmethod=nil, backupstatus=nil, snapshottime=nil)
          @SnapshotId = snapshotid
          @FileName = filename
          @FileSize = filesize
          @StartTime = starttime
          @FinishTime = finishtime
          @BackupType = backuptype
          @BackupMethod = backupmethod
          @BackupStatus = backupstatus
          @SnapshotTime = snapshottime
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @BackupType = params['BackupType']
          @BackupMethod = params['BackupMethod']
          @BackupStatus = params['BackupStatus']
          @SnapshotTime = params['SnapshotTime']
        end
      end

      # 计费资源信息
      class BillingResourceInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array

        attr_accessor :ClusterId, :InstanceIds
        
        def initialize(clusterid=nil, instanceids=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # 集群实例信息
      class ClusterInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceType: 引擎类型
        # @type InstanceType: String
        # @param InstanceStatus: 实例状态
        # @type InstanceStatus: String
        # @param InstanceStatusDesc: 实例状态描述
        # @type InstanceStatusDesc: String
        # @param InstanceCpu: cpu核数
        # @type InstanceCpu: Integer
        # @param InstanceMemory: 内存
        # @type InstanceMemory: Integer
        # @param InstanceStorage: 硬盘
        # @type InstanceStorage: Integer

        attr_accessor :InstanceId, :InstanceName, :InstanceType, :InstanceStatus, :InstanceStatusDesc, :InstanceCpu, :InstanceMemory, :InstanceStorage
        
        def initialize(instanceid=nil, instancename=nil, instancetype=nil, instancestatus=nil, instancestatusdesc=nil, instancecpu=nil, instancememory=nil, instancestorage=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceType = instancetype
          @InstanceStatus = instancestatus
          @InstanceStatusDesc = instancestatusdesc
          @InstanceCpu = instancecpu
          @InstanceMemory = instancememory
          @InstanceStorage = instancestorage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @InstanceStatus = params['InstanceStatus']
          @InstanceStatusDesc = params['InstanceStatusDesc']
          @InstanceCpu = params['InstanceCpu']
          @InstanceMemory = params['InstanceMemory']
          @InstanceStorage = params['InstanceStorage']
        end
      end

      # CreateClusters请求参数结构体
      class CreateClustersRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param VpcId: 所属VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 所属子网ID
        # @type SubnetId: String
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param DbVersion: 数据库版本，取值范围:
        # <li> MYSQL可选值：5.7 </li>
        # @type DbVersion: String
        # @param ProjectId: 所属项目ID
        # @type ProjectId: Integer
        # @param Cpu: 普通实例Cpu核数
        # @type Cpu: Integer
        # @param Memory: 普通实例内存
        # @type Memory: Integer
        # @param Storage: 存储
        # @type Storage: Integer
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param AdminPassword: 账号密码(8-64个字符，至少包含字母、数字、字符（支持的字符：_+-&=!@#$%^*()~）中的两种)
        # @type AdminPassword: String
        # @param Port: 端口，默认5432
        # @type Port: Integer
        # @param PayMode: 计费模式，按量计费：0，包年包月：1。默认按量计费。
        # @type PayMode: Integer
        # @param Count: 购买个数，目前只支持传1（不传默认为1）
        # @type Count: Integer
        # @param RollbackStrategy: 回档类型：
        # noneRollback：不回档；
        # snapRollback，快照回档；
        # timeRollback，时间点回档
        # @type RollbackStrategy: String
        # @param RollbackId: 快照回档，表示snapshotId；时间点回档，表示queryId，为0，表示需要判断时间点是否有效
        # @type RollbackId: Integer
        # @param OriginalClusterId: 回档时，传入源集群ID，用于查找源poolId
        # @type OriginalClusterId: String
        # @param ExpectTime: 时间点回档，指定时间；快照回档，快照时间
        # @type ExpectTime: String
        # @param ExpectTimeThresh: 时间点回档，指定时间允许范围
        # @type ExpectTimeThresh: Integer
        # @param StorageLimit: 普通实例存储上限，单位GB
        # @type StorageLimit: Integer
        # @param InstanceCount: 实例数量
        # @type InstanceCount: Integer
        # @param TimeSpan: 包年包月购买时长
        # @type TimeSpan: Integer
        # @param TimeUnit: 包年包月购买时长单位
        # @type TimeUnit: String
        # @param AutoRenewFlag: 包年包月购买是否自动续费
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param HaCount: 实例数量（该参数已不再使用，只做存量兼容处理）
        # @type HaCount: Integer
        # @param OrderSource: 订单来源
        # @type OrderSource: String
        # @param ResourceTags: 集群创建需要绑定的tag数组信息
        # @type ResourceTags: Array
        # @param DbMode: Db类型
        # 当DbType为MYSQL时可选(默认NORMAL)：
        # <li>NORMAL</li>
        # <li>SERVERLESS</li>
        # @type DbMode: String
        # @param MinCpu: 当DbMode为SEVERLESS时必填
        # cpu最小值，可选范围参考DescribeServerlessInstanceSpecs接口返回
        # @type MinCpu: Float
        # @param MaxCpu: 当DbMode为SEVERLESS时必填：
        # cpu最大值，可选范围参考DescribeServerlessInstanceSpecs接口返回
        # @type MaxCpu: Float
        # @param AutoPause: 当DbMode为SEVERLESS时，指定集群是否自动暂停，可选范围
        # <li>yes</li>
        # <li>no</li>
        # 默认值:yes
        # @type AutoPause: String
        # @param AutoPauseDelay: 当DbMode为SEVERLESS时，指定集群自动暂停的延迟，单位秒，可选范围[600,691200]
        # 默认值:600
        # @type AutoPauseDelay: Integer

        attr_accessor :Zone, :VpcId, :SubnetId, :DbType, :DbVersion, :ProjectId, :Cpu, :Memory, :Storage, :ClusterName, :AdminPassword, :Port, :PayMode, :Count, :RollbackStrategy, :RollbackId, :OriginalClusterId, :ExpectTime, :ExpectTimeThresh, :StorageLimit, :InstanceCount, :TimeSpan, :TimeUnit, :AutoRenewFlag, :AutoVoucher, :HaCount, :OrderSource, :ResourceTags, :DbMode, :MinCpu, :MaxCpu, :AutoPause, :AutoPauseDelay
        
        def initialize(zone=nil, vpcid=nil, subnetid=nil, dbtype=nil, dbversion=nil, projectid=nil, cpu=nil, memory=nil, storage=nil, clustername=nil, adminpassword=nil, port=nil, paymode=nil, count=nil, rollbackstrategy=nil, rollbackid=nil, originalclusterid=nil, expecttime=nil, expecttimethresh=nil, storagelimit=nil, instancecount=nil, timespan=nil, timeunit=nil, autorenewflag=nil, autovoucher=nil, hacount=nil, ordersource=nil, resourcetags=nil, dbmode=nil, mincpu=nil, maxcpu=nil, autopause=nil, autopausedelay=nil)
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @DbType = dbtype
          @DbVersion = dbversion
          @ProjectId = projectid
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @ClusterName = clustername
          @AdminPassword = adminpassword
          @Port = port
          @PayMode = paymode
          @Count = count
          @RollbackStrategy = rollbackstrategy
          @RollbackId = rollbackid
          @OriginalClusterId = originalclusterid
          @ExpectTime = expecttime
          @ExpectTimeThresh = expecttimethresh
          @StorageLimit = storagelimit
          @InstanceCount = instancecount
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @AutoRenewFlag = autorenewflag
          @AutoVoucher = autovoucher
          @HaCount = hacount
          @OrderSource = ordersource
          @ResourceTags = resourcetags
          @DbMode = dbmode
          @MinCpu = mincpu
          @MaxCpu = maxcpu
          @AutoPause = autopause
          @AutoPauseDelay = autopausedelay
        end

        def deserialize(params)
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @ProjectId = params['ProjectId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @ClusterName = params['ClusterName']
          @AdminPassword = params['AdminPassword']
          @Port = params['Port']
          @PayMode = params['PayMode']
          @Count = params['Count']
          @RollbackStrategy = params['RollbackStrategy']
          @RollbackId = params['RollbackId']
          @OriginalClusterId = params['OriginalClusterId']
          @ExpectTime = params['ExpectTime']
          @ExpectTimeThresh = params['ExpectTimeThresh']
          @StorageLimit = params['StorageLimit']
          @InstanceCount = params['InstanceCount']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoVoucher = params['AutoVoucher']
          @HaCount = params['HaCount']
          @OrderSource = params['OrderSource']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              @ResourceTags << Tag.new.deserialize(i)
            end
          end
          @DbMode = params['DbMode']
          @MinCpu = params['MinCpu']
          @MaxCpu = params['MaxCpu']
          @AutoPause = params['AutoPause']
          @AutoPauseDelay = params['AutoPauseDelay']
        end
      end

      # CreateClusters返回参数结构体
      class CreateClustersResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param DealNames: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param ResourceIds: 资源ID列表（异步发货可能无法返回该字段, 强烈建议使用dealNames字段查询接口DescribeResourcesByDealName获取异步发货的资源ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: Array
        # @param ClusterIds: 集群ID列表（异步发货可能不返回该字段, 强烈建议使用dealNames查询接口DescribeResourcesByDealName获取异步发货的集群ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIds: Array
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :DealNames, :ResourceIds, :ClusterIds, :BigDealIds, :RequestId
        
        def initialize(tranid=nil, dealnames=nil, resourceids=nil, clusterids=nil, bigdealids=nil, requestid=nil)
          @TranId = tranid
          @DealNames = dealnames
          @ResourceIds = resourceids
          @ClusterIds = clusterids
          @BigDealIds = bigdealids
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @DealNames = params['DealNames']
          @ResourceIds = params['ResourceIds']
          @ClusterIds = params['ClusterIds']
          @BigDealIds = params['BigDealIds']
          @RequestId = params['RequestId']
        end
      end

      # 集群信息
      class CynosdbCluster < TencentCloud::Common::AbstractModel
        # @param Status: 集群状态
        # @type Status: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域
        # @type Region: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceNum: 实例数
        # @type InstanceNum: Integer
        # @param Uin: 用户uin
        # @type Uin: String
        # @param DbType: 引擎类型
        # @type DbType: String
        # @param AppId: 用户appid
        # @type AppId: Integer
        # @param StatusDesc: 集群状态描述
        # @type StatusDesc: String
        # @param CreateTime: 集群创建时间
        # @type CreateTime: String
        # @param PayMode: 付费模式。0-按量计费，1-包年包月
        # @type PayMode: Integer
        # @param PeriodEndTime: 截止时间
        # @type PeriodEndTime: String
        # @param Vip: 集群读写vip
        # @type Vip: String
        # @param Vport: 集群读写vport
        # @type Vport: Integer
        # @param ProjectID: 项目id
        # @type ProjectID: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param CynosVersion: cynos内核版本
        # @type CynosVersion: String
        # @param StorageLimit: 存储容量
        # @type StorageLimit: Integer
        # @param RenewFlag: 续费标志
        # @type RenewFlag: Integer
        # @param ProcessingTask: 正在处理的任务
        # @type ProcessingTask: String
        # @param Tasks: 集群的任务数组
        # @type Tasks: Array
        # @param ResourceTags: 集群绑定的tag数组
        # @type ResourceTags: Array
        # @param DbMode: Db类型(NORMAL, SERVERLESS)
        # @type DbMode: String
        # @param ServerlessStatus: 当Db类型为SERVERLESS时，serverless集群状态，可选值:
        # resume
        # pause
        # @type ServerlessStatus: String

        attr_accessor :Status, :UpdateTime, :Zone, :ClusterName, :Region, :DbVersion, :ClusterId, :InstanceNum, :Uin, :DbType, :AppId, :StatusDesc, :CreateTime, :PayMode, :PeriodEndTime, :Vip, :Vport, :ProjectID, :VpcId, :SubnetId, :CynosVersion, :StorageLimit, :RenewFlag, :ProcessingTask, :Tasks, :ResourceTags, :DbMode, :ServerlessStatus
        
        def initialize(status=nil, updatetime=nil, zone=nil, clustername=nil, region=nil, dbversion=nil, clusterid=nil, instancenum=nil, uin=nil, dbtype=nil, appid=nil, statusdesc=nil, createtime=nil, paymode=nil, periodendtime=nil, vip=nil, vport=nil, projectid=nil, vpcid=nil, subnetid=nil, cynosversion=nil, storagelimit=nil, renewflag=nil, processingtask=nil, tasks=nil, resourcetags=nil, dbmode=nil, serverlessstatus=nil)
          @Status = status
          @UpdateTime = updatetime
          @Zone = zone
          @ClusterName = clustername
          @Region = region
          @DbVersion = dbversion
          @ClusterId = clusterid
          @InstanceNum = instancenum
          @Uin = uin
          @DbType = dbtype
          @AppId = appid
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @Vip = vip
          @Vport = vport
          @ProjectID = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @CynosVersion = cynosversion
          @StorageLimit = storagelimit
          @RenewFlag = renewflag
          @ProcessingTask = processingtask
          @Tasks = tasks
          @ResourceTags = resourcetags
          @DbMode = dbmode
          @ServerlessStatus = serverlessstatus
        end

        def deserialize(params)
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
          @Zone = params['Zone']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @DbVersion = params['DbVersion']
          @ClusterId = params['ClusterId']
          @InstanceNum = params['InstanceNum']
          @Uin = params['Uin']
          @DbType = params['DbType']
          @AppId = params['AppId']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @ProjectID = params['ProjectID']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CynosVersion = params['CynosVersion']
          @StorageLimit = params['StorageLimit']
          @RenewFlag = params['RenewFlag']
          @ProcessingTask = params['ProcessingTask']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              @Tasks << ObjectTask.new.deserialize(i)
            end
          end
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              @ResourceTags << Tag.new.deserialize(i)
            end
          end
          @DbMode = params['DbMode']
          @ServerlessStatus = params['ServerlessStatus']
        end
      end

      # 集群详情详细信息
      class CynosdbClusterDetail < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域
        # @type Region: String
        # @param Status: 状态
        # @type Status: String
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param VpcName: VPC名称
        # @type VpcName: String
        # @param VpcId: vpc唯一id
        # @type VpcId: String
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Charset: 字符集
        # @type Charset: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param UsedStorage: 使用容量
        # @type UsedStorage: Integer
        # @param RoAddr: 读写分离Vport
        # @type RoAddr: Array
        # @param InstanceSet: 实例信息
        # @type InstanceSet: Array
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param Vip: vip地址
        # @type Vip: String
        # @param Vport: vport端口
        # @type Vport: Integer
        # @param ProjectID: 项目id
        # @type ProjectID: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param ResourceTags: 实例绑定的tag数组信息
        # @type ResourceTags: Array

        attr_accessor :ClusterId, :ClusterName, :Region, :Status, :StatusDesc, :VpcName, :VpcId, :SubnetName, :SubnetId, :Charset, :CreateTime, :DbType, :DbVersion, :UsedStorage, :RoAddr, :InstanceSet, :PayMode, :PeriodEndTime, :Vip, :Vport, :ProjectID, :Zone, :ResourceTags
        
        def initialize(clusterid=nil, clustername=nil, region=nil, status=nil, statusdesc=nil, vpcname=nil, vpcid=nil, subnetname=nil, subnetid=nil, charset=nil, createtime=nil, dbtype=nil, dbversion=nil, usedstorage=nil, roaddr=nil, instanceset=nil, paymode=nil, periodendtime=nil, vip=nil, vport=nil, projectid=nil, zone=nil, resourcetags=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @Status = status
          @StatusDesc = statusdesc
          @VpcName = vpcname
          @VpcId = vpcid
          @SubnetName = subnetname
          @SubnetId = subnetid
          @Charset = charset
          @CreateTime = createtime
          @DbType = dbtype
          @DbVersion = dbversion
          @UsedStorage = usedstorage
          @RoAddr = roaddr
          @InstanceSet = instanceset
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @Vip = vip
          @Vport = vport
          @ProjectID = projectid
          @Zone = zone
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @VpcName = params['VpcName']
          @VpcId = params['VpcId']
          @SubnetName = params['SubnetName']
          @SubnetId = params['SubnetId']
          @Charset = params['Charset']
          @CreateTime = params['CreateTime']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @UsedStorage = params['UsedStorage']
          unless params['RoAddr'].nil?
            @RoAddr = []
            params['RoAddr'].each do |i|
              @RoAddr << Addr.new.deserialize(i)
            end
          end
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              @InstanceSet << ClusterInstanceDetail.new.deserialize(i)
            end
          end
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @ProjectID = params['ProjectID']
          @Zone = params['Zone']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              @ResourceTags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # 实例信息
      class CynosdbInstance < TencentCloud::Common::AbstractModel
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Status: 实例状态
        # @type Status: String
        # @param StatusDesc: 实例状态中文描述
        # @type StatusDesc: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param Cpu: Cpu，单位：核
        # @type Cpu: Integer
        # @param Memory: 内存，单位：GB
        # @type Memory: Integer
        # @param Storage: 存储量，单位：GB
        # @type Storage: Integer
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param InstanceRole: 实例当前角色
        # @type InstanceRole: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Vip: 实例内网IP
        # @type Vip: String
        # @param Vport: 实例内网端口
        # @type Vport: Integer
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 实例过期时间
        # @type PeriodEndTime: String
        # @param DestroyDeadlineText: 销毁期限
        # @type DestroyDeadlineText: String
        # @param IsolateTime: 隔离时间
        # @type IsolateTime: String
        # @param NetType: 网络类型
        # @type NetType: Integer
        # @param WanDomain: 外网域名
        # @type WanDomain: String
        # @param WanIP: 外网IP
        # @type WanIP: String
        # @param WanPort: 外网端口
        # @type WanPort: Integer
        # @param WanStatus: 外网状态
        # @type WanStatus: String
        # @param DestroyTime: 实例销毁时间
        # @type DestroyTime: String
        # @param CynosVersion: Cynos内核版本
        # @type CynosVersion: String
        # @param ProcessingTask: 正在处理的任务
        # @type ProcessingTask: String
        # @param RenewFlag: 续费标志
        # @type RenewFlag: Integer
        # @param MinCpu: serverless实例cpu下限
        # @type MinCpu: Float
        # @param MaxCpu: serverless实例cpu上限
        # @type MaxCpu: Float
        # @param ServerlessStatus: serverless实例状态, 可选值：
        # resume
        # pause
        # @type ServerlessStatus: String

        attr_accessor :Uin, :AppId, :ClusterId, :ClusterName, :InstanceId, :InstanceName, :ProjectId, :Region, :Zone, :Status, :StatusDesc, :DbType, :DbVersion, :Cpu, :Memory, :Storage, :InstanceType, :InstanceRole, :UpdateTime, :CreateTime, :VpcId, :SubnetId, :Vip, :Vport, :PayMode, :PeriodEndTime, :DestroyDeadlineText, :IsolateTime, :NetType, :WanDomain, :WanIP, :WanPort, :WanStatus, :DestroyTime, :CynosVersion, :ProcessingTask, :RenewFlag, :MinCpu, :MaxCpu, :ServerlessStatus
        
        def initialize(uin=nil, appid=nil, clusterid=nil, clustername=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, zone=nil, status=nil, statusdesc=nil, dbtype=nil, dbversion=nil, cpu=nil, memory=nil, storage=nil, instancetype=nil, instancerole=nil, updatetime=nil, createtime=nil, vpcid=nil, subnetid=nil, vip=nil, vport=nil, paymode=nil, periodendtime=nil, destroydeadlinetext=nil, isolatetime=nil, nettype=nil, wandomain=nil, wanip=nil, wanport=nil, wanstatus=nil, destroytime=nil, cynosversion=nil, processingtask=nil, renewflag=nil, mincpu=nil, maxcpu=nil, serverlessstatus=nil)
          @Uin = uin
          @AppId = appid
          @ClusterId = clusterid
          @ClusterName = clustername
          @InstanceId = instanceid
          @InstanceName = instancename
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @Status = status
          @StatusDesc = statusdesc
          @DbType = dbtype
          @DbVersion = dbversion
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @InstanceType = instancetype
          @InstanceRole = instancerole
          @UpdateTime = updatetime
          @CreateTime = createtime
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Vport = vport
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @DestroyDeadlineText = destroydeadlinetext
          @IsolateTime = isolatetime
          @NetType = nettype
          @WanDomain = wandomain
          @WanIP = wanip
          @WanPort = wanport
          @WanStatus = wanstatus
          @DestroyTime = destroytime
          @CynosVersion = cynosversion
          @ProcessingTask = processingtask
          @RenewFlag = renewflag
          @MinCpu = mincpu
          @MaxCpu = maxcpu
          @ServerlessStatus = serverlessstatus
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceType = params['InstanceType']
          @InstanceRole = params['InstanceRole']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @DestroyDeadlineText = params['DestroyDeadlineText']
          @IsolateTime = params['IsolateTime']
          @NetType = params['NetType']
          @WanDomain = params['WanDomain']
          @WanIP = params['WanIP']
          @WanPort = params['WanPort']
          @WanStatus = params['WanStatus']
          @DestroyTime = params['DestroyTime']
          @CynosVersion = params['CynosVersion']
          @ProcessingTask = params['ProcessingTask']
          @RenewFlag = params['RenewFlag']
          @MinCpu = params['MinCpu']
          @MaxCpu = params['MaxCpu']
          @ServerlessStatus = params['ServerlessStatus']
        end
      end

      # 实例详情
      class CynosdbInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Status: 实例状态
        # @type Status: String
        # @param StatusDesc: 实例状态中文描述
        # @type StatusDesc: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param Cpu: Cpu，单位：核
        # @type Cpu: Integer
        # @param Memory: 内存，单位：GB
        # @type Memory: Integer
        # @param Storage: 存储量，单位：GB
        # @type Storage: Integer
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param InstanceRole: 实例当前角色
        # @type InstanceRole: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 实例过期时间
        # @type PeriodEndTime: String
        # @param NetType: 网络类型
        # @type NetType: Integer
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Vip: 实例内网IP
        # @type Vip: String
        # @param Vport: 实例内网端口
        # @type Vport: Integer
        # @param WanDomain: 实例外网域名
        # @type WanDomain: String
        # @param Charset: 字符集
        # @type Charset: String
        # @param CynosVersion: Cynos内核版本
        # @type CynosVersion: String
        # @param RenewFlag: 续费标志
        # @type RenewFlag: Integer

        attr_accessor :Uin, :AppId, :ClusterId, :ClusterName, :InstanceId, :InstanceName, :ProjectId, :Region, :Zone, :Status, :StatusDesc, :DbType, :DbVersion, :Cpu, :Memory, :Storage, :InstanceType, :InstanceRole, :UpdateTime, :CreateTime, :PayMode, :PeriodEndTime, :NetType, :VpcId, :SubnetId, :Vip, :Vport, :WanDomain, :Charset, :CynosVersion, :RenewFlag
        
        def initialize(uin=nil, appid=nil, clusterid=nil, clustername=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, zone=nil, status=nil, statusdesc=nil, dbtype=nil, dbversion=nil, cpu=nil, memory=nil, storage=nil, instancetype=nil, instancerole=nil, updatetime=nil, createtime=nil, paymode=nil, periodendtime=nil, nettype=nil, vpcid=nil, subnetid=nil, vip=nil, vport=nil, wandomain=nil, charset=nil, cynosversion=nil, renewflag=nil)
          @Uin = uin
          @AppId = appid
          @ClusterId = clusterid
          @ClusterName = clustername
          @InstanceId = instanceid
          @InstanceName = instancename
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @Status = status
          @StatusDesc = statusdesc
          @DbType = dbtype
          @DbVersion = dbversion
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @InstanceType = instancetype
          @InstanceRole = instancerole
          @UpdateTime = updatetime
          @CreateTime = createtime
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @NetType = nettype
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @Charset = charset
          @CynosVersion = cynosversion
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceType = params['InstanceType']
          @InstanceRole = params['InstanceRole']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @NetType = params['NetType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @Charset = params['Charset']
          @CynosVersion = params['CynosVersion']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 实例组信息
      class CynosdbInstanceGrp < TencentCloud::Common::AbstractModel
        # @param AppId: appId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param DeletedTime: 删除时间
        # @type DeletedTime: String
        # @param InstanceGrpId: 实例组ID
        # @type InstanceGrpId: String
        # @param Status: 状态
        # @type Status: String
        # @param Type: 实例组类型。ha-ha组；ro-只读组
        # @type Type: String
        # @param UpdatedTime: 更新时间
        # @type UpdatedTime: String
        # @param Vip: 内网IP
        # @type Vip: String
        # @param Vport: 内网端口
        # @type Vport: Integer
        # @param WanDomain: 外网域名
        # @type WanDomain: String
        # @param WanIP: 外网ip
        # @type WanIP: String
        # @param WanPort: 外网端口
        # @type WanPort: Integer
        # @param WanStatus: 外网状态
        # @type WanStatus: String
        # @param InstanceSet: 实例组包含实例信息
        # @type InstanceSet: Array

        attr_accessor :AppId, :ClusterId, :CreatedTime, :DeletedTime, :InstanceGrpId, :Status, :Type, :UpdatedTime, :Vip, :Vport, :WanDomain, :WanIP, :WanPort, :WanStatus, :InstanceSet
        
        def initialize(appid=nil, clusterid=nil, createdtime=nil, deletedtime=nil, instancegrpid=nil, status=nil, type=nil, updatedtime=nil, vip=nil, vport=nil, wandomain=nil, wanip=nil, wanport=nil, wanstatus=nil, instanceset=nil)
          @AppId = appid
          @ClusterId = clusterid
          @CreatedTime = createdtime
          @DeletedTime = deletedtime
          @InstanceGrpId = instancegrpid
          @Status = status
          @Type = type
          @UpdatedTime = updatedtime
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @WanIP = wanip
          @WanPort = wanport
          @WanStatus = wanstatus
          @InstanceSet = instanceset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @CreatedTime = params['CreatedTime']
          @DeletedTime = params['DeletedTime']
          @InstanceGrpId = params['InstanceGrpId']
          @Status = params['Status']
          @Type = params['Type']
          @UpdatedTime = params['UpdatedTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @WanIP = params['WanIP']
          @WanPort = params['WanPort']
          @WanStatus = params['WanStatus']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              @InstanceSet << CynosdbInstance.new.deserialize(i)
            end
          end
        end
      end

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AccountNames: 需要过滤的账户列表
        # @type AccountNames: Array
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String

        attr_accessor :ClusterId, :AccountNames, :DbType
        
        def initialize(clusterid=nil, accountnames=nil, dbtype=nil)
          @ClusterId = clusterid
          @AccountNames = accountnames
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AccountNames = params['AccountNames']
          @DbType = params['DbType']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param AccountSet: 数据库账号列表
        # @type AccountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountSet, :RequestId
        
        def initialize(accountset=nil, requestid=nil)
          @AccountSet = accountset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountSet'].nil?
            @AccountSet = []
            params['AccountSet'].each do |i|
              @AccountSet << Account.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupConfig请求参数结构体
      class DescribeBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeBackupConfig返回参数结构体
      class DescribeBackupConfigResponse < TencentCloud::Common::AbstractModel
        # @param BackupTimeBeg: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeBeg: Integer
        # @param BackupTimeEnd: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeEnd: Integer
        # @param ReserveDuration: 表示保留备份时长, 单位秒，超过该时间将被清理, 七天表示为3600*24*7=604800
        # @type ReserveDuration: Integer
        # @param BackupFreq: 备份频率，长度为7的数组，分别对应周一到周日的备份方式，full-全量备份，increment-增量备份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupFreq: Array
        # @param BackupType: 备份方式，logic-逻辑备份，snapshot-快照备份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupTimeBeg, :BackupTimeEnd, :ReserveDuration, :BackupFreq, :BackupType, :RequestId
        
        def initialize(backuptimebeg=nil, backuptimeend=nil, reserveduration=nil, backupfreq=nil, backuptype=nil, requestid=nil)
          @BackupTimeBeg = backuptimebeg
          @BackupTimeEnd = backuptimeend
          @ReserveDuration = reserveduration
          @BackupFreq = backupfreq
          @BackupType = backuptype
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupTimeBeg = params['BackupTimeBeg']
          @BackupTimeEnd = params['BackupTimeEnd']
          @ReserveDuration = params['ReserveDuration']
          @BackupFreq = params['BackupFreq']
          @BackupType = params['BackupType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupList请求参数结构体
      class DescribeBackupListRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Limit: 备份文件列表偏移
        # @type Limit: Integer
        # @param Offset: 备份文件列表起始
        # @type Offset: Integer

        attr_accessor :ClusterId, :Limit, :Offset
        
        def initialize(clusterid=nil, limit=nil, offset=nil)
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeBackupList返回参数结构体
      class DescribeBackupListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总共备份文件个数
        # @type TotalCount: Integer
        # @param BackupList: 备份文件列表
        # @type BackupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupList, :RequestId
        
        def initialize(totalcount=nil, backuplist=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupList = backuplist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupList'].nil?
            @BackupList = []
            params['BackupList'].each do |i|
              @BackupList << BackupFileInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterDetail请求参数结构体
      class DescribeClusterDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterDetail返回参数结构体
      class DescribeClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param Detail: 集群详细信息
        # @type Detail: :class:`Tencentcloud::Cynosdb.v20190107.models.CynosdbClusterDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :RequestId
        
        def initialize(detail=nil, requestid=nil)
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = CynosdbClusterDetail.new.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterInstanceGrps请求参数结构体
      class DescribeClusterInstanceGrpsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterInstanceGrps返回参数结构体
      class DescribeClusterInstanceGrpsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例组个数
        # @type TotalCount: Integer
        # @param InstanceGrpInfoList: 实例组列表
        # @type InstanceGrpInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceGrpInfoList, :RequestId
        
        def initialize(totalcount=nil, instancegrpinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceGrpInfoList = instancegrpinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceGrpInfoList'].nil?
            @InstanceGrpInfoList = []
            params['InstanceGrpInfoList'].each do |i|
              @InstanceGrpInfoList << CynosdbInstanceGrp.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param DbType: 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        # @type DbType: String
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值范围：
        # <li> CREATETIME：创建时间</li>
        # <li> PERIODENDTIME：过期时间</li>
        # @type OrderBy: String
        # @param OrderByType: 排序类型，取值范围：
        # <li> ASC：升序排序 </li>
        # <li> DESC：降序排序 </li>
        # @type OrderByType: String
        # @param Filters: 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Filters: Array

        attr_accessor :DbType, :Limit, :Offset, :OrderBy, :OrderByType, :Filters
        
        def initialize(dbtype=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, filters=nil)
          @DbType = dbtype
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Filters = filters
        end

        def deserialize(params)
          @DbType = params['DbType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << QueryFilter.new.deserialize(i)
            end
          end
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群数
        # @type TotalCount: Integer
        # @param ClusterSet: 集群列表
        # @type ClusterSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterSet, :RequestId
        
        def initialize(totalcount=nil, clusterset=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterSet = clusterset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              @ClusterSet << CynosdbCluster.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例组ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBSecurityGroups返回参数结构体
      class DescribeDBSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组信息
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId
        
        def initialize(groups=nil, requestid=nil)
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              @Groups << SecurityGroup.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceDetail请求参数结构体
      class DescribeInstanceDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceDetail返回参数结构体
      class DescribeInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param Detail: 实例详情
        # @type Detail: :class:`Tencentcloud::Cynosdb.v20190107.models.CynosdbInstanceDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :RequestId
        
        def initialize(detail=nil, requestid=nil)
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = CynosdbInstanceDetail.new.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceSpecs请求参数结构体
      class DescribeInstanceSpecsRequest < TencentCloud::Common::AbstractModel
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String

        attr_accessor :DbType
        
        def initialize(dbtype=nil)
          @DbType = dbtype
        end

        def deserialize(params)
          @DbType = params['DbType']
        end
      end

      # DescribeInstanceSpecs返回参数结构体
      class DescribeInstanceSpecsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSpecSet: 规格信息
        # @type InstanceSpecSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSpecSet, :RequestId
        
        def initialize(instancespecset=nil, requestid=nil)
          @InstanceSpecSet = instancespecset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSpecSet'].nil?
            @InstanceSpecSet = []
            params['InstanceSpecSet'].each do |i|
              @InstanceSpecSet << InstanceSpec.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值范围：
        # <li> CREATETIME：创建时间</li>
        # <li> PERIODENDTIME：过期时间</li>
        # @type OrderBy: String
        # @param OrderByType: 排序类型，取值范围：
        # <li> ASC：升序排序 </li>
        # <li> DESC：降序排序 </li>
        # @type OrderByType: String
        # @param Filters: 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Filters: Array
        # @param DbType: 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        # @type DbType: String
        # @param Status: 实例状态
        # @type Status: String
        # @param InstanceIds: 实例id列表
        # @type InstanceIds: Array

        attr_accessor :Limit, :Offset, :OrderBy, :OrderByType, :Filters, :DbType, :Status, :InstanceIds
        
        def initialize(limit=nil, offset=nil, orderby=nil, orderbytype=nil, filters=nil, dbtype=nil, status=nil, instanceids=nil)
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Filters = filters
          @DbType = dbtype
          @Status = status
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << QueryFilter.new.deserialize(i)
            end
          end
          @DbType = params['DbType']
          @Status = params['Status']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例个数
        # @type TotalCount: Integer
        # @param InstanceSet: 实例列表
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :RequestId
        
        def initialize(totalcount=nil, instanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              @InstanceSet << CynosdbInstance.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintainPeriod请求参数结构体
      class DescribeMaintainPeriodRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMaintainPeriod返回参数结构体
      class DescribeMaintainPeriodResponse < TencentCloud::Common::AbstractModel
        # @param MaintainWeekDays: 维护week days
        # @type MaintainWeekDays: Array
        # @param MaintainStartTime: 维护开始时间，单位秒
        # @type MaintainStartTime: Integer
        # @param MaintainDuration: 维护时长，单位秒
        # @type MaintainDuration: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaintainWeekDays, :MaintainStartTime, :MaintainDuration, :RequestId
        
        def initialize(maintainweekdays=nil, maintainstarttime=nil, maintainduration=nil, requestid=nil)
          @MaintainWeekDays = maintainweekdays
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @RequestId = requestid
        end

        def deserialize(params)
          @MaintainWeekDays = params['MaintainWeekDays']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectSecurityGroups请求参数结构体
      class DescribeProjectSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProjectSecurityGroups返回参数结构体
      class DescribeProjectSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组详情
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId
        
        def initialize(groups=nil, requestid=nil)
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              @Groups << SecurityGroup.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcesByDealName请求参数结构体
      class DescribeResourcesByDealNameRequest < TencentCloud::Common::AbstractModel
        # @param DealName: 计费订单id
        # @type DealName: String

        attr_accessor :DealName
        
        def initialize(dealname=nil)
          @DealName = dealname
        end

        def deserialize(params)
          @DealName = params['DealName']
        end
      end

      # DescribeResourcesByDealName返回参数结构体
      class DescribeResourcesByDealNameResponse < TencentCloud::Common::AbstractModel
        # @param BillingResourceInfos: 计费资源id信息数组
        # @type BillingResourceInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BillingResourceInfos, :RequestId
        
        def initialize(billingresourceinfos=nil, requestid=nil)
          @BillingResourceInfos = billingresourceinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BillingResourceInfos'].nil?
            @BillingResourceInfos = []
            params['BillingResourceInfos'].each do |i|
              @BillingResourceInfos << BillingResourceInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTimeRange请求参数结构体
      class DescribeRollbackTimeRangeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeRollbackTimeRange返回参数结构体
      class DescribeRollbackTimeRangeResponse < TencentCloud::Common::AbstractModel
        # @param TimeRangeStart: 有效回归时间范围开始时间点
        # @type TimeRangeStart: String
        # @param TimeRangeEnd: 有效回归时间范围结束时间点
        # @type TimeRangeEnd: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TimeRangeStart, :TimeRangeEnd, :RequestId
        
        def initialize(timerangestart=nil, timerangeend=nil, requestid=nil)
          @TimeRangeStart = timerangestart
          @TimeRangeEnd = timerangeend
          @RequestId = requestid
        end

        def deserialize(params)
          @TimeRangeStart = params['TimeRangeStart']
          @TimeRangeEnd = params['TimeRangeEnd']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTimeValidity请求参数结构体
      class DescribeRollbackTimeValidityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ExpectTime: 期望回滚的时间点
        # @type ExpectTime: String
        # @param ExpectTimeThresh: 回滚时间点的允许误差范围
        # @type ExpectTimeThresh: Integer

        attr_accessor :ClusterId, :ExpectTime, :ExpectTimeThresh
        
        def initialize(clusterid=nil, expecttime=nil, expecttimethresh=nil)
          @ClusterId = clusterid
          @ExpectTime = expecttime
          @ExpectTimeThresh = expecttimethresh
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ExpectTime = params['ExpectTime']
          @ExpectTimeThresh = params['ExpectTimeThresh']
        end
      end

      # DescribeRollbackTimeValidity返回参数结构体
      class DescribeRollbackTimeValidityResponse < TencentCloud::Common::AbstractModel
        # @param PoolId: 存储poolID
        # @type PoolId: Integer
        # @param QueryId: 回滚任务ID，后续按该时间点回滚时，需要传入
        # @type QueryId: Integer
        # @param Status: 时间点是否有效：pass，检测通过；fail，检测失败
        # @type Status: String
        # @param SuggestTime: 建议时间点，在Status为fail时，该值才有效
        # @type SuggestTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PoolId, :QueryId, :Status, :SuggestTime, :RequestId
        
        def initialize(poolid=nil, queryid=nil, status=nil, suggesttime=nil, requestid=nil)
          @PoolId = poolid
          @QueryId = queryid
          @Status = status
          @SuggestTime = suggesttime
          @RequestId = requestid
        end

        def deserialize(params)
          @PoolId = params['PoolId']
          @QueryId = params['QueryId']
          @Status = params['Status']
          @SuggestTime = params['SuggestTime']
          @RequestId = params['RequestId']
        end
      end

      # 实例可售卖规格详细信息，创建实例时Cpu/Memory确定实例规格，存储可选大小为[MinStorageSize,MaxStorageSize]
      class InstanceSpec < TencentCloud::Common::AbstractModel
        # @param Cpu: 实例CPU，单位：核
        # @type Cpu: Integer
        # @param Memory: 实例内存，单位：GB
        # @type Memory: Integer
        # @param MaxStorageSize: 实例最大可用存储，单位：GB
        # @type MaxStorageSize: Integer
        # @param MinStorageSize: 实例最小可用存储，单位：GB
        # @type MinStorageSize: Integer

        attr_accessor :Cpu, :Memory, :MaxStorageSize, :MinStorageSize
        
        def initialize(cpu=nil, memory=nil, maxstoragesize=nil, minstoragesize=nil)
          @Cpu = cpu
          @Memory = memory
          @MaxStorageSize = maxstoragesize
          @MinStorageSize = minstoragesize
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @MaxStorageSize = params['MaxStorageSize']
          @MinStorageSize = params['MinStorageSize']
        end
      end

      # IsolateCluster请求参数结构体
      class IsolateClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String

        attr_accessor :ClusterId, :DbType
        
        def initialize(clusterid=nil, dbtype=nil)
          @ClusterId = clusterid
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DbType = params['DbType']
        end
      end

      # IsolateCluster返回参数结构体
      class IsolateClusterResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param DealNames: 退款订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :DealNames, :RequestId
        
        def initialize(flowid=nil, dealnames=nil, requestid=nil)
          @FlowId = flowid
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # IsolateInstance请求参数结构体
      class IsolateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 实例ID数组
        # @type InstanceIdList: Array
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String

        attr_accessor :ClusterId, :InstanceIdList, :DbType
        
        def initialize(clusterid=nil, instanceidlist=nil, dbtype=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
          @DbType = params['DbType']
        end
      end

      # IsolateInstance返回参数结构体
      class IsolateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流id
        # @type FlowId: Integer
        # @param DealNames: 隔离实例的订单id（预付费实例）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :DealNames, :RequestId
        
        def initialize(flowid=nil, dealnames=nil, requestid=nil)
          @FlowId = flowid
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # ModifyBackupConfig请求参数结构体
      class ModifyBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BackupTimeBeg: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeBeg: Integer
        # @param BackupTimeEnd: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeEnd: Integer
        # @param ReserveDuration: 表示保留备份时长, 单位秒，超过该时间将被清理, 七天表示为3600*24*7=604800
        # @type ReserveDuration: Integer
        # @param BackupFreq: 备份频率，长度为7的数组，分别对应周一到周日的备份方式，full-全量备份，increment-增量备份
        # @type BackupFreq: Array
        # @param BackupType: 备份方式，logic-逻辑备份，snapshot-快照备份
        # @type BackupType: String

        attr_accessor :ClusterId, :BackupTimeBeg, :BackupTimeEnd, :ReserveDuration, :BackupFreq, :BackupType
        
        def initialize(clusterid=nil, backuptimebeg=nil, backuptimeend=nil, reserveduration=nil, backupfreq=nil, backuptype=nil)
          @ClusterId = clusterid
          @BackupTimeBeg = backuptimebeg
          @BackupTimeEnd = backuptimeend
          @ReserveDuration = reserveduration
          @BackupFreq = backupfreq
          @BackupType = backuptype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BackupTimeBeg = params['BackupTimeBeg']
          @BackupTimeEnd = params['BackupTimeEnd']
          @ReserveDuration = params['ReserveDuration']
          @BackupFreq = params['BackupFreq']
          @BackupType = params['BackupType']
        end
      end

      # ModifyBackupConfig返回参数结构体
      class ModifyBackupConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例组ID
        # @type InstanceId: String
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组Id组成的数组。
        # @type SecurityGroupIds: Array
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :InstanceId, :SecurityGroupIds, :Zone
        
        def initialize(instanceid=nil, securitygroupids=nil, zone=nil)
          @InstanceId = instanceid
          @SecurityGroupIds = securitygroupids
          @Zone = zone
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Zone = params['Zone']
        end
      end

      # ModifyDBInstanceSecurityGroups返回参数结构体
      class ModifyDBInstanceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMaintainPeriodConfig请求参数结构体
      class ModifyMaintainPeriodConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param MaintainStartTime: 维护开始时间，单位为秒，如3:00为10800
        # @type MaintainStartTime: Integer
        # @param MaintainDuration: 维护持续时间，单位为秒，如1小时为3600
        # @type MaintainDuration: Integer
        # @param MaintainWeekDays: 每周维护日期
        # @type MaintainWeekDays: Array

        attr_accessor :InstanceId, :MaintainStartTime, :MaintainDuration, :MaintainWeekDays
        
        def initialize(instanceid=nil, maintainstarttime=nil, maintainduration=nil, maintainweekdays=nil)
          @InstanceId = instanceid
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @MaintainWeekDays = maintainweekdays
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @MaintainWeekDays = params['MaintainWeekDays']
        end
      end

      # ModifyMaintainPeriodConfig返回参数结构体
      class ModifyMaintainPeriodConfigResponse < TencentCloud::Common::AbstractModel
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

      # 任务信息
      class ObjectTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务自增ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param TaskStatus: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String
        # @param ObjectId: 任务ID（集群ID|实例组ID|实例ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectId: String
        # @param ObjectType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectType: String

        attr_accessor :TaskId, :TaskType, :TaskStatus, :ObjectId, :ObjectType
        
        def initialize(taskid=nil, tasktype=nil, taskstatus=nil, objectid=nil, objecttype=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @TaskStatus = taskstatus
          @ObjectId = objectid
          @ObjectType = objecttype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @TaskStatus = params['TaskStatus']
          @ObjectId = params['ObjectId']
          @ObjectType = params['ObjectType']
        end
      end

      # OfflineCluster请求参数结构体
      class OfflineClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # OfflineCluster返回参数结构体
      class OfflineClusterResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # OfflineInstance请求参数结构体
      class OfflineInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 实例ID数组
        # @type InstanceIdList: Array

        attr_accessor :ClusterId, :InstanceIdList
        
        def initialize(clusterid=nil, instanceidlist=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # OfflineInstance返回参数结构体
      class OfflineInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 安全组规则
      class PolicyRule < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT或者DROP
        # @type Action: String
        # @param CidrIp: 来源Ip或Ip段，例如192.168.0.0/16
        # @type CidrIp: String
        # @param PortRange: 端口
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持udp、tcp等
        # @type IpProtocol: String
        # @param ServiceModule: 协议端口ID或者协议端口组ID。
        # @type ServiceModule: String
        # @param AddressModule: IP地址ID或者ID地址组ID。
        # @type AddressModule: String
        # @param Id: id
        # @type Id: String
        # @param Desc: 描述
        # @type Desc: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :ServiceModule, :AddressModule, :Id, :Desc
        
        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, servicemodule=nil, addressmodule=nil, id=nil, desc=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @ServiceModule = servicemodule
          @AddressModule = addressmodule
          @Id = id
          @Desc = desc
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @ServiceModule = params['ServiceModule']
          @AddressModule = params['AddressModule']
          @Id = params['Id']
          @Desc = params['Desc']
        end
      end

      # 查询过滤器
      class QueryFilter < TencentCloud::Common::AbstractModel
        # @param Names: 搜索字段，目前支持："InstanceId", "ProjectId", "InstanceName", "Vip"
        # @type Names: Array
        # @param Values: 搜索字符串
        # @type Values: Array
        # @param ExactMatch: 是否精确匹配
        # @type ExactMatch: Boolean
        # @param Name: 搜索字段
        # @type Name: String

        attr_accessor :Names, :Values, :ExactMatch, :Name
        
        def initialize(names=nil, values=nil, exactmatch=nil, name=nil)
          @Names = names
          @Values = values
          @ExactMatch = exactmatch
          @Name = name
        end

        def deserialize(params)
          @Names = params['Names']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
          @Name = params['Name']
        end
      end

      # 安全组详情
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param CreateTime: 创建时间，时间格式：yyyy-mm-dd hh:mm:ss
        # @type CreateTime: String
        # @param Inbound: 入站规则
        # @type Inbound: Array
        # @param Outbound: 出站规则
        # @type Outbound: Array
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注
        # @type SecurityGroupRemark: String

        attr_accessor :ProjectId, :CreateTime, :Inbound, :Outbound, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark
        
        def initialize(projectid=nil, createtime=nil, inbound=nil, outbound=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @Inbound = inbound
          @Outbound = outbound
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          unless params['Inbound'].nil?
            @Inbound = []
            params['Inbound'].each do |i|
              @Inbound << PolicyRule.new.deserialize(i)
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              @Outbound << PolicyRule.new.deserialize(i)
            end
          end
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
        end
      end

      # SetRenewFlag请求参数结构体
      class SetRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 需操作的实例ID
        # @type ResourceIds: Array
        # @param AutoRenewFlag: 自动续费标志位
        # @type AutoRenewFlag: Integer

        attr_accessor :ResourceIds, :AutoRenewFlag
        
        def initialize(resourceids=nil, autorenewflag=nil)
          @ResourceIds = resourceids
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # SetRenewFlag返回参数结构体
      class SetRenewFlagResponse < TencentCloud::Common::AbstractModel
        # @param Count: 操作成功实例数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId
        
        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # 集群绑定的标签信息，包含标签键TagKey和标签值TagValue
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
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

      # UpgradeInstance请求参数结构体
      class UpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Cpu: 数据库CPU
        # @type Cpu: Integer
        # @param Memory: 数据库内存
        # @type Memory: Integer
        # @param UpgradeType: 升级类型：upgradeImmediate，upgradeInMaintain
        # @type UpgradeType: String
        # @param StorageLimit: 存储上限，为0表示使用标准配置
        # @type StorageLimit: Integer
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String

        attr_accessor :InstanceId, :Cpu, :Memory, :UpgradeType, :StorageLimit, :AutoVoucher, :DbType
        
        def initialize(instanceid=nil, cpu=nil, memory=nil, upgradetype=nil, storagelimit=nil, autovoucher=nil, dbtype=nil)
          @InstanceId = instanceid
          @Cpu = cpu
          @Memory = memory
          @UpgradeType = upgradetype
          @StorageLimit = storagelimit
          @AutoVoucher = autovoucher
          @DbType = dbtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @UpgradeType = params['UpgradeType']
          @StorageLimit = params['StorageLimit']
          @AutoVoucher = params['AutoVoucher']
          @DbType = params['DbType']
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param DealNames: 订单号
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :BigDealIds, :DealNames, :RequestId
        
        def initialize(tranid=nil, bigdealids=nil, dealnames=nil, requestid=nil)
          @TranId = tranid
          @BigDealIds = bigdealids
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @BigDealIds = params['BigDealIds']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

