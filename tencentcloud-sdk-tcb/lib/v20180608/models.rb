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
  module Tcb
    module V20180608
      # 合法域名
      class AuthDomain < TencentCloud::Common::AbstractModel
        # @param Id: 域名ID
        # @type Id: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Type: 域名类型。包含以下取值：
        # <li>SYSTEM</li>
        # <li>USER</li>
        # @type Type: String
        # @param Status: 状态。包含以下取值：
        # <li>ENABLE</li>
        # <li>DISABLE</li>
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :Domain, :Type, :Status, :CreateTime, :UpdateTime
        
        def initialize(id=nil, domain=nil, type=nil, status=nil, createtime=nil, updatetime=nil)
          @Id = id
          @Domain = domain
          @Type = type
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Domain = params['Domain']
          @Type = params['Type']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # CheckTcbService请求参数结构体
      class CheckTcbServiceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # CheckTcbService返回参数结构体
      class CheckTcbServiceResponse < TencentCloud::Common::AbstractModel
        # @param Initialized: true表示已开通
        # @type Initialized: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Initialized, :RequestId
        
        def initialize(initialized=nil, requestid=nil)
          @Initialized = initialized
          @RequestId = requestid
        end

        def deserialize(params)
          @Initialized = params['Initialized']
          @RequestId = params['RequestId']
        end
      end

      # cloudrun安全特性能力

      class CloudBaseCapabilities < TencentCloud::Common::AbstractModel
        # @param Add: 启用安全能力项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Add: Array
        # @param Drop: 禁用安全能力向列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Drop: Array

        attr_accessor :Add, :Drop
        
        def initialize(add=nil, drop=nil)
          @Add = add
          @Drop = drop
        end

        def deserialize(params)
          @Add = params['Add']
          @Drop = params['Drop']
        end
      end

      # 代码仓库里 Repo的信息描述
      class CloudBaseCodeRepoDetail < TencentCloud::Common::AbstractModel
        # @param Name: repo的名字
        # @type Name: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseCodeRepoName`
        # @param Url: repo的url
        # @type Url: String

        attr_accessor :Name, :Url
        
        def initialize(name=nil, url=nil)
          @Name = name
          @Url = url
        end

        def deserialize(params)
          unless params['Name'].nil?
            @Name = CloudBaseCodeRepoName.new.deserialize(params['Name'])
          end
          @Url = params['Url']
        end
      end

      # 代码仓库 repo的名字
      class CloudBaseCodeRepoName < TencentCloud::Common::AbstractModel
        # @param Name: repo的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param FullName: repo的完整全名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullName: String

        attr_accessor :Name, :FullName
        
        def initialize(name=nil, fullname=nil)
          @Name = name
          @FullName = fullname
        end

        def deserialize(params)
          @Name = params['Name']
          @FullName = params['FullName']
        end
      end

      # es信息
      class CloudBaseEsInfo < TencentCloud::Common::AbstractModel
        # @param Id: es的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param SecretName: secret名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretName: String
        # @param Ip: ip地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String
        # @param Account: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Account: String
        # @param Password: 密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String

        attr_accessor :Id, :SecretName, :Ip, :Port, :Index, :Account, :Password
        
        def initialize(id=nil, secretname=nil, ip=nil, port=nil, index=nil, account=nil, password=nil)
          @Id = id
          @SecretName = secretname
          @Ip = ip
          @Port = port
          @Index = index
          @Account = account
          @Password = password
        end

        def deserialize(params)
          @Id = params['Id']
          @SecretName = params['SecretName']
          @Ip = params['Ip']
          @Port = params['Port']
          @Index = params['Index']
          @Account = params['Account']
          @Password = params['Password']
        end
      end

      # 云开发项目版本
      class CloudBaseProjectVersion < TencentCloud::Common::AbstractModel
        # @param Name: 项目名
        # @type Name: String
        # @param Sam: SAM json
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sam: String
        # @param Source: 来源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: :class:`Tencentcloud::Tcb.v20180608.models.CodeSource`
        # @param CreateTime: 创建时间, unix时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间 ,unix时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Status: 项目状态, 枚举值:
        #         "creatingEnv"-创建环境中
        # 	"createEnvFail"-创建环境失败
        # 	"building"-构建中
        # 	"buildFail"-构建失败
        # 	"deploying"-部署中
        # 	 "deployFail"-部署失败
        # 	 "success"-部署成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Parameters: 环境变量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parameters: Array
        # @param Type: 项目类型, 枚举值:
        # "framework-oneclick" 控制台一键部署
        # "framework-local-oneclick" cli本地一键部署
        # "qci-extension-cicd" 内网coding ci cd
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param CIId: ci的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CIId: String
        # @param CDId: cd的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CDId: String
        # @param EnvId: 环境id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param VersionNum: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionNum: Integer
        # @param FailReason: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String
        # @param RcJson: rc.json内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RcJson: String
        # @param AddonConfig: 插件配置内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddonConfig: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param NetworkConfig: 网络配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkConfig: String
        # @param ExtensionId: 扩展id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtensionId: String
        # @param FailType: 错误类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailType: String
        # @param RepoUrl: 私有仓库地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoUrl: String
        # @param AutoDeployOnCodeChange: 是否私有仓库代码变更触发自动部署
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoDeployOnCodeChange: Boolean

        attr_accessor :Name, :Sam, :Source, :CreateTime, :UpdateTime, :Status, :Parameters, :Type, :CIId, :CDId, :EnvId, :VersionNum, :FailReason, :RcJson, :AddonConfig, :Tags, :NetworkConfig, :ExtensionId, :FailType, :RepoUrl, :AutoDeployOnCodeChange
        
        def initialize(name=nil, sam=nil, source=nil, createtime=nil, updatetime=nil, status=nil, parameters=nil, type=nil, ciid=nil, cdid=nil, envid=nil, versionnum=nil, failreason=nil, rcjson=nil, addonconfig=nil, tags=nil, networkconfig=nil, extensionid=nil, failtype=nil, repourl=nil, autodeployoncodechange=nil)
          @Name = name
          @Sam = sam
          @Source = source
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @Parameters = parameters
          @Type = type
          @CIId = ciid
          @CDId = cdid
          @EnvId = envid
          @VersionNum = versionnum
          @FailReason = failreason
          @RcJson = rcjson
          @AddonConfig = addonconfig
          @Tags = tags
          @NetworkConfig = networkconfig
          @ExtensionId = extensionid
          @FailType = failtype
          @RepoUrl = repourl
          @AutoDeployOnCodeChange = autodeployoncodechange
        end

        def deserialize(params)
          @Name = params['Name']
          @Sam = params['Sam']
          unless params['Source'].nil?
            @Source = CodeSource.new.deserialize(params['Source'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              @Parameters << KVPair.new.deserialize(i)
            end
          end
          @Type = params['Type']
          @CIId = params['CIId']
          @CDId = params['CDId']
          @EnvId = params['EnvId']
          @VersionNum = params['VersionNum']
          @FailReason = params['FailReason']
          @RcJson = params['RcJson']
          @AddonConfig = params['AddonConfig']
          @Tags = params['Tags']
          @NetworkConfig = params['NetworkConfig']
          @ExtensionId = params['ExtensionId']
          @FailType = params['FailType']
          @RepoUrl = params['RepoUrl']
          @AutoDeployOnCodeChange = params['AutoDeployOnCodeChange']
        end
      end

      # CloudBaseRun 镜像信息
      class CloudBaseRunImageInfo < TencentCloud::Common::AbstractModel
        # @param RepositoryName: 镜像仓库名称
        # @type RepositoryName: String
        # @param IsPublic: 是否公有
        # @type IsPublic: Boolean
        # @param TagName: 镜像tag名称
        # @type TagName: String
        # @param ServerAddr: 镜像server
        # @type ServerAddr: String
        # @param ImageUrl: 镜像拉取地址
        # @type ImageUrl: String

        attr_accessor :RepositoryName, :IsPublic, :TagName, :ServerAddr, :ImageUrl
        
        def initialize(repositoryname=nil, ispublic=nil, tagname=nil, serveraddr=nil, imageurl=nil)
          @RepositoryName = repositoryname
          @IsPublic = ispublic
          @TagName = tagname
          @ServerAddr = serveraddr
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @RepositoryName = params['RepositoryName']
          @IsPublic = params['IsPublic']
          @TagName = params['TagName']
          @ServerAddr = params['ServerAddr']
          @ImageUrl = params['ImageUrl']
        end
      end

      # ImageSecretInfo的信息
      class CloudBaseRunImageSecretInfo < TencentCloud::Common::AbstractModel
        # @param RegistryServer: 镜像地址
        # @type RegistryServer: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Password: 仓库密码
        # @type Password: String
        # @param Email: 邮箱
        # @type Email: String

        attr_accessor :RegistryServer, :UserName, :Password, :Email
        
        def initialize(registryserver=nil, username=nil, password=nil, email=nil)
          @RegistryServer = registryserver
          @UserName = username
          @Password = password
          @Email = email
        end

        def deserialize(params)
          @RegistryServer = params['RegistryServer']
          @UserName = params['UserName']
          @Password = params['Password']
          @Email = params['Email']
        end
      end

      # nfs挂载资源
      class CloudBaseRunNfsVolumeSource < TencentCloud::Common::AbstractModel
        # @param Server: NFS挂载Server
        # @type Server: String
        # @param Path: Server路径
        # @type Path: String
        # @param ReadOnly: 是否只读
        # @type ReadOnly: Boolean
        # @param SecretName: secret名称
        # @type SecretName: String
        # @param EnableEmptyDirVolume: 临时目录
        # @type EnableEmptyDirVolume: Boolean

        attr_accessor :Server, :Path, :ReadOnly, :SecretName, :EnableEmptyDirVolume
        
        def initialize(server=nil, path=nil, readonly=nil, secretname=nil, enableemptydirvolume=nil)
          @Server = server
          @Path = path
          @ReadOnly = readonly
          @SecretName = secretname
          @EnableEmptyDirVolume = enableemptydirvolume
        end

        def deserialize(params)
          @Server = params['Server']
          @Path = params['Path']
          @ReadOnly = params['ReadOnly']
          @SecretName = params['SecretName']
          @EnableEmptyDirVolume = params['EnableEmptyDirVolume']
        end
      end

      # CloudBaseRun 的 Side 描述定义
      class CloudBaseRunSideSpec < TencentCloud::Common::AbstractModel
        # @param ContainerImage: 容器镜像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerImage: String
        # @param ContainerPort: 容器端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerPort: Integer
        # @param ContainerName: 容器的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerName: String
        # @param EnvVar: kv的json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvVar: String
        # @param InitialDelaySeconds: InitialDelaySeconds 延迟多长时间启动健康检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialDelaySeconds: Integer
        # @param Cpu: CPU大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Mem: 内存大小（单位：M）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mem: Integer
        # @param Security: 安全特性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Security: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseSecurityContext`
        # @param VolumeMountInfos: 挂载信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeMountInfos: Array

        attr_accessor :ContainerImage, :ContainerPort, :ContainerName, :EnvVar, :InitialDelaySeconds, :Cpu, :Mem, :Security, :VolumeMountInfos
        
        def initialize(containerimage=nil, containerport=nil, containername=nil, envvar=nil, initialdelayseconds=nil, cpu=nil, mem=nil, security=nil, volumemountinfos=nil)
          @ContainerImage = containerimage
          @ContainerPort = containerport
          @ContainerName = containername
          @EnvVar = envvar
          @InitialDelaySeconds = initialdelayseconds
          @Cpu = cpu
          @Mem = mem
          @Security = security
          @VolumeMountInfos = volumemountinfos
        end

        def deserialize(params)
          @ContainerImage = params['ContainerImage']
          @ContainerPort = params['ContainerPort']
          @ContainerName = params['ContainerName']
          @EnvVar = params['EnvVar']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          unless params['Security'].nil?
            @Security = CloudBaseSecurityContext.new.deserialize(params['Security'])
          end
          unless params['VolumeMountInfos'].nil?
            @VolumeMountInfos = []
            params['VolumeMountInfos'].each do |i|
              @VolumeMountInfos << CloudBaseRunVolumeMount.new.deserialize(i)
            end
          end
        end
      end

      # cfs挂载点
      class CloudBaseRunVolumeMount < TencentCloud::Common::AbstractModel
        # @param Name: 资源名
        # @type Name: String
        # @param MountPath: 挂载路径
        # @type MountPath: String
        # @param ReadOnly: 是否只读
        # @type ReadOnly: Boolean
        # @param NfsVolumes: Nfs挂载信息
        # @type NfsVolumes: Array

        attr_accessor :Name, :MountPath, :ReadOnly, :NfsVolumes
        
        def initialize(name=nil, mountpath=nil, readonly=nil, nfsvolumes=nil)
          @Name = name
          @MountPath = mountpath
          @ReadOnly = readonly
          @NfsVolumes = nfsvolumes
        end

        def deserialize(params)
          @Name = params['Name']
          @MountPath = params['MountPath']
          @ReadOnly = params['ReadOnly']
          unless params['NfsVolumes'].nil?
            @NfsVolumes = []
            params['NfsVolumes'].each do |i|
              @NfsVolumes << CloudBaseRunNfsVolumeSource.new.deserialize(i)
            end
          end
        end
      end

      # vpc信息
      class CloudBaseRunVpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetIds: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param CreateType: 创建类型(0=继承; 1=新建; 2=指定)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateType: Integer

        attr_accessor :VpcId, :SubnetIds, :CreateType
        
        def initialize(vpcid=nil, subnetids=nil, createtype=nil)
          @VpcId = vpcid
          @SubnetIds = subnetids
          @CreateType = createtype
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @CreateType = params['CreateType']
        end
      end

      # 子网信息
      class CloudBaseRunVpcSubnet < TencentCloud::Common::AbstractModel
        # @param Id: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Cidr: 子网的ipv4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cidr: String
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Target: subnet类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Target: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Name: 名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Id, :Cidr, :Zone, :Type, :Target, :Region, :Name
        
        def initialize(id=nil, cidr=nil, zone=nil, type=nil, target=nil, region=nil, name=nil)
          @Id = id
          @Cidr = cidr
          @Zone = zone
          @Type = type
          @Target = target
          @Region = region
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Cidr = params['Cidr']
          @Zone = params['Zone']
          @Type = params['Type']
          @Target = params['Target']
          @Region = params['Region']
          @Name = params['Name']
        end
      end

      # cloudrun安全特性

      class CloudBaseSecurityContext < TencentCloud::Common::AbstractModel
        # @param Capabilities: 安全特性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Capabilities: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseCapabilities`

        attr_accessor :Capabilities
        
        def initialize(capabilities=nil)
          @Capabilities = capabilities
        end

        def deserialize(params)
          unless params['Capabilities'].nil?
            @Capabilities = CloudBaseCapabilities.new.deserialize(params['Capabilities'])
          end
        end
      end

      # CloudRunServiceSimpleVersionSnapshot 信息
      class CloudRunServiceSimpleVersionSnapshot < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param Remark: 版本备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Cpu: cpu规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Float
        # @param Mem: 内存规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mem: Float
        # @param MinNum: 最小副本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinNum: Integer
        # @param MaxNum: 最大副本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxNum: Integer
        # @param ImageUrl: 镜像url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String
        # @param PolicyType: 扩容策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: String
        # @param PolicyThreshold: 策略阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyThreshold: Integer
        # @param EnvParams: 环境参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvParams: String
        # @param ContainerPort: 容器端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerPort: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param UploadType: 更新类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UploadType: String
        # @param DockerfilePath: dockerfile路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DockerfilePath: String
        # @param BuildDir: 构建路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildDir: String
        # @param RepoType: repo类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoType: String
        # @param Repo: 仓库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Repo: String
        # @param Branch: 分支
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branch: String
        # @param EnvId: 环境id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param ServerName: 服务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerName: String
        # @param PackageName: package名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param PackageVersion: package版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageVersion: String
        # @param CustomLogs: 自定义log路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomLogs: String
        # @param InitialDelaySeconds: 延时健康检查时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialDelaySeconds: Integer
        # @param SnapshotName: snapshot名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotName: String
        # @param ImageInfo: 镜像信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfo: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseRunImageInfo`
        # @param CodeDetail: 代码仓库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeDetail: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseCodeRepoDetail`
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :VersionName, :Remark, :Cpu, :Mem, :MinNum, :MaxNum, :ImageUrl, :PolicyType, :PolicyThreshold, :EnvParams, :ContainerPort, :CreateTime, :UpdateTime, :UploadType, :DockerfilePath, :BuildDir, :RepoType, :Repo, :Branch, :EnvId, :ServerName, :PackageName, :PackageVersion, :CustomLogs, :InitialDelaySeconds, :SnapshotName, :ImageInfo, :CodeDetail, :Status
        
        def initialize(versionname=nil, remark=nil, cpu=nil, mem=nil, minnum=nil, maxnum=nil, imageurl=nil, policytype=nil, policythreshold=nil, envparams=nil, containerport=nil, createtime=nil, updatetime=nil, uploadtype=nil, dockerfilepath=nil, builddir=nil, repotype=nil, repo=nil, branch=nil, envid=nil, servername=nil, packagename=nil, packageversion=nil, customlogs=nil, initialdelayseconds=nil, snapshotname=nil, imageinfo=nil, codedetail=nil, status=nil)
          @VersionName = versionname
          @Remark = remark
          @Cpu = cpu
          @Mem = mem
          @MinNum = minnum
          @MaxNum = maxnum
          @ImageUrl = imageurl
          @PolicyType = policytype
          @PolicyThreshold = policythreshold
          @EnvParams = envparams
          @ContainerPort = containerport
          @CreateTime = createtime
          @UpdateTime = updatetime
          @UploadType = uploadtype
          @DockerfilePath = dockerfilepath
          @BuildDir = builddir
          @RepoType = repotype
          @Repo = repo
          @Branch = branch
          @EnvId = envid
          @ServerName = servername
          @PackageName = packagename
          @PackageVersion = packageversion
          @CustomLogs = customlogs
          @InitialDelaySeconds = initialdelayseconds
          @SnapshotName = snapshotname
          @ImageInfo = imageinfo
          @CodeDetail = codedetail
          @Status = status
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @Remark = params['Remark']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @MinNum = params['MinNum']
          @MaxNum = params['MaxNum']
          @ImageUrl = params['ImageUrl']
          @PolicyType = params['PolicyType']
          @PolicyThreshold = params['PolicyThreshold']
          @EnvParams = params['EnvParams']
          @ContainerPort = params['ContainerPort']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @UploadType = params['UploadType']
          @DockerfilePath = params['DockerfilePath']
          @BuildDir = params['BuildDir']
          @RepoType = params['RepoType']
          @Repo = params['Repo']
          @Branch = params['Branch']
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @CustomLogs = params['CustomLogs']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @SnapshotName = params['SnapshotName']
          unless params['ImageInfo'].nil?
            @ImageInfo = CloudBaseRunImageInfo.new.deserialize(params['ImageInfo'])
          end
          unless params['CodeDetail'].nil?
            @CodeDetail = CloudBaseCodeRepoDetail.new.deserialize(params['CodeDetail'])
          end
          @Status = params['Status']
        end
      end

      # 服务的volume
      class CloudRunServiceVolume < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param NFS: NFS的挂载方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NFS: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseRunNfsVolumeSource`
        # @param SecretName: secret名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretName: String
        # @param EnableEmptyDirVolume: 是否开启临时目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableEmptyDirVolume: Boolean

        attr_accessor :Name, :NFS, :SecretName, :EnableEmptyDirVolume
        
        def initialize(name=nil, nfs=nil, secretname=nil, enableemptydirvolume=nil)
          @Name = name
          @NFS = nfs
          @SecretName = secretname
          @EnableEmptyDirVolume = enableemptydirvolume
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['NFS'].nil?
            @NFS = CloudBaseRunNfsVolumeSource.new.deserialize(params['NFS'])
          end
          @SecretName = params['SecretName']
          @EnableEmptyDirVolume = params['EnableEmptyDirVolume']
        end
      end

      # 云开发项目来源
      class CodeSource < TencentCloud::Common::AbstractModel
        # @param Type: 类型, 可能的枚举: "coding","package","package_url","github","gitlab","gitee","rawcode"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Url: 下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param WorkDir: 工作目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkDir: String
        # @param CodingPackageName: code包名, type为coding的时候需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodingPackageName: String
        # @param CodingPackageVersion: coding版本名, type为coding的时候需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodingPackageVersion: String
        # @param RawCode: 源码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawCode: String
        # @param Branch: 代码分支
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branch: String

        attr_accessor :Type, :Url, :Name, :WorkDir, :CodingPackageName, :CodingPackageVersion, :RawCode, :Branch
        
        def initialize(type=nil, url=nil, name=nil, workdir=nil, codingpackagename=nil, codingpackageversion=nil, rawcode=nil, branch=nil)
          @Type = type
          @Url = url
          @Name = name
          @WorkDir = workdir
          @CodingPackageName = codingpackagename
          @CodingPackageVersion = codingpackageversion
          @RawCode = rawcode
          @Branch = branch
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          @Name = params['Name']
          @WorkDir = params['WorkDir']
          @CodingPackageName = params['CodingPackageName']
          @CodingPackageVersion = params['CodingPackageVersion']
          @RawCode = params['RawCode']
          @Branch = params['Branch']
        end
      end

      # CommonServiceAPI请求参数结构体
      class CommonServiceAPIRequest < TencentCloud::Common::AbstractModel
        # @param Service: Service名，需要转发访问的接口名
        # @type Service: String
        # @param JSONData: 需要转发的云API参数，要转成JSON格式
        # @type JSONData: String

        attr_accessor :Service, :JSONData
        
        def initialize(service=nil, jsondata=nil)
          @Service = service
          @JSONData = jsondata
        end

        def deserialize(params)
          @Service = params['Service']
          @JSONData = params['JSONData']
        end
      end

      # CommonServiceAPI返回参数结构体
      class CommonServiceAPIResponse < TencentCloud::Common::AbstractModel
        # @param JSONResp: json格式response
        # @type JSONResp: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONResp, :RequestId
        
        def initialize(jsonresp=nil, requestid=nil)
          @JSONResp = jsonresp
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONResp = params['JSONResp']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndDeployCloudBaseProject请求参数结构体
      class CreateAndDeployCloudBaseProjectRequest < TencentCloud::Common::AbstractModel
        # @param Name: 项目名
        # @type Name: String
        # @param Source: 来源
        # @type Source: :class:`Tencentcloud::Tcb.v20180608.models.CodeSource`
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param Type: 项目类型, 枚举值为: framework-oneclick,qci-extension-cicd
        # @type Type: String
        # @param Parameters: 环境变量
        # @type Parameters: Array
        # @param EnvAlias: 环境别名。要以a-z开头，不能包含a-zA-z0-9-以外的字符
        # @type EnvAlias: String
        # @param RcJson: rc.json的内容
        # @type RcJson: String
        # @param AddonConfig: 插件配置内容
        # @type AddonConfig: String
        # @param Tags: 标签
        # @type Tags: Array
        # @param NetworkConfig: 网络配置
        # @type NetworkConfig: String
        # @param FreeQuota: 用户享有的免费额度级别，目前只能为“basic”，不传该字段或该字段为空，标识不享受免费额度。
        # @type FreeQuota: String
        # @param AutoDeployOnCodeChange: 是否代码变更触发自动部署
        # @type AutoDeployOnCodeChange: Boolean
        # @param RepoUrl: 私有仓库地址
        # @type RepoUrl: String

        attr_accessor :Name, :Source, :EnvId, :Type, :Parameters, :EnvAlias, :RcJson, :AddonConfig, :Tags, :NetworkConfig, :FreeQuota, :AutoDeployOnCodeChange, :RepoUrl
        
        def initialize(name=nil, source=nil, envid=nil, type=nil, parameters=nil, envalias=nil, rcjson=nil, addonconfig=nil, tags=nil, networkconfig=nil, freequota=nil, autodeployoncodechange=nil, repourl=nil)
          @Name = name
          @Source = source
          @EnvId = envid
          @Type = type
          @Parameters = parameters
          @EnvAlias = envalias
          @RcJson = rcjson
          @AddonConfig = addonconfig
          @Tags = tags
          @NetworkConfig = networkconfig
          @FreeQuota = freequota
          @AutoDeployOnCodeChange = autodeployoncodechange
          @RepoUrl = repourl
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Source'].nil?
            @Source = CodeSource.new.deserialize(params['Source'])
          end
          @EnvId = params['EnvId']
          @Type = params['Type']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              @Parameters << KVPair.new.deserialize(i)
            end
          end
          @EnvAlias = params['EnvAlias']
          @RcJson = params['RcJson']
          @AddonConfig = params['AddonConfig']
          @Tags = params['Tags']
          @NetworkConfig = params['NetworkConfig']
          @FreeQuota = params['FreeQuota']
          @AutoDeployOnCodeChange = params['AutoDeployOnCodeChange']
          @RepoUrl = params['RepoUrl']
        end
      end

      # CreateAndDeployCloudBaseProject返回参数结构体
      class CreateAndDeployCloudBaseProjectResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :RequestId
        
        def initialize(envid=nil, requestid=nil)
          @EnvId = envid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAuthDomain请求参数结构体
      class CreateAuthDomainRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Domains: 安全域名
        # @type Domains: Array

        attr_accessor :EnvId, :Domains
        
        def initialize(envid=nil, domains=nil)
          @EnvId = envid
          @Domains = domains
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Domains = params['Domains']
        end
      end

      # CreateAuthDomain返回参数结构体
      class CreateAuthDomainResponse < TencentCloud::Common::AbstractModel
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

      # CreateCloudBaseRunResource请求参数结构体
      class CreateCloudBaseRunResourceRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param VpcId: vpc的ID
        # @type VpcId: String
        # @param SubnetIds: 子网ID列表，当VpcId不为空，SubnetIds也不能为空
        # @type SubnetIds: Array

        attr_accessor :EnvId, :VpcId, :SubnetIds
        
        def initialize(envid=nil, vpcid=nil, subnetids=nil)
          @EnvId = envid
          @VpcId = vpcid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
        end
      end

      # CreateCloudBaseRunResource返回参数结构体
      class CreateCloudBaseRunResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回集群创建是否成功 succ为成功。并且中间无err
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateCloudBaseRunServerVersion请求参数结构体
      class CreateCloudBaseRunServerVersionRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param UploadType: 枚举（package/repository/image)
        # @type UploadType: String
        # @param FlowRatio: 流量占比
        # @type FlowRatio: Integer
        # @param Cpu: Cpu的大小，单位：核
        # @type Cpu: Float
        # @param Mem: Mem的大小，单位：G
        # @type Mem: Float
        # @param MinNum: 最小副本数，最小值：0
        # @type MinNum: Integer
        # @param MaxNum: 副本最大数，最大值：50
        # @type MaxNum: Integer
        # @param PolicyType: 策略类型(枚举值：比如cpu)
        # @type PolicyType: String
        # @param PolicyThreshold: 策略阈值
        # @type PolicyThreshold: Integer
        # @param ContainerPort: 服务端口
        # @type ContainerPort: Integer
        # @param ServerName: 服务名称
        # @type ServerName: String
        # @param RepositoryType: repository的类型(coding/gitlab/github/coding)
        # @type RepositoryType: String
        # @param DockerfilePath: Dockerfile地址
        # @type DockerfilePath: String
        # @param BuildDir: 构建目录
        # @type BuildDir: String
        # @param EnvParams: 环境变量
        # @type EnvParams: String
        # @param Repository: repository地址
        # @type Repository: String
        # @param Branch: 分支
        # @type Branch: String
        # @param VersionRemark: 版本备注
        # @type VersionRemark: String
        # @param PackageName: 代码包名字
        # @type PackageName: String
        # @param PackageVersion: 代码包的版本
        # @type PackageVersion: String
        # @param ImageInfo: Image的详情
        # @type ImageInfo: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseRunImageInfo`
        # @param CodeDetail: Github等拉取代码的详情
        # @type CodeDetail: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseCodeRepoDetail`
        # @param ImageSecretInfo: 私有镜像秘钥信息
        # @type ImageSecretInfo: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseRunImageSecretInfo`
        # @param ImagePullSecret: 私有镜像 认证名称
        # @type ImagePullSecret: String
        # @param CustomLogs: 用户自定义采集日志路径
        # @type CustomLogs: String
        # @param InitialDelaySeconds: 延迟多长时间开始健康检查（单位s）
        # @type InitialDelaySeconds: Integer
        # @param MountVolumeInfo: cfs挂载信息
        # @type MountVolumeInfo: Array
        # @param AccessType: 4 代表只能微信链路访问
        # @type AccessType: Integer
        # @param EsInfo: es信息
        # @type EsInfo: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseEsInfo`
        # @param EnableUnion: 是否使用统一域名
        # @type EnableUnion: Boolean
        # @param OperatorRemark: 操作备注
        # @type OperatorRemark: String
        # @param ServerPath: 服务路径
        # @type ServerPath: String
        # @param ImageReuseKey: 镜像复用的key
        # @type ImageReuseKey: String
        # @param SidecarSpecs: 容器的描述文件
        # @type SidecarSpecs: Array
        # @param Security: 安全特性
        # @type Security: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseSecurityContext`
        # @param ServiceVolumes: 服务磁盘挂载
        # @type ServiceVolumes: Array
        # @param IsCreateJnsGw: 是否创建JnsGw 0未传默认创建 1创建 2不创建
        # @type IsCreateJnsGw: Integer

        attr_accessor :EnvId, :UploadType, :FlowRatio, :Cpu, :Mem, :MinNum, :MaxNum, :PolicyType, :PolicyThreshold, :ContainerPort, :ServerName, :RepositoryType, :DockerfilePath, :BuildDir, :EnvParams, :Repository, :Branch, :VersionRemark, :PackageName, :PackageVersion, :ImageInfo, :CodeDetail, :ImageSecretInfo, :ImagePullSecret, :CustomLogs, :InitialDelaySeconds, :MountVolumeInfo, :AccessType, :EsInfo, :EnableUnion, :OperatorRemark, :ServerPath, :ImageReuseKey, :SidecarSpecs, :Security, :ServiceVolumes, :IsCreateJnsGw
        
        def initialize(envid=nil, uploadtype=nil, flowratio=nil, cpu=nil, mem=nil, minnum=nil, maxnum=nil, policytype=nil, policythreshold=nil, containerport=nil, servername=nil, repositorytype=nil, dockerfilepath=nil, builddir=nil, envparams=nil, repository=nil, branch=nil, versionremark=nil, packagename=nil, packageversion=nil, imageinfo=nil, codedetail=nil, imagesecretinfo=nil, imagepullsecret=nil, customlogs=nil, initialdelayseconds=nil, mountvolumeinfo=nil, accesstype=nil, esinfo=nil, enableunion=nil, operatorremark=nil, serverpath=nil, imagereusekey=nil, sidecarspecs=nil, security=nil, servicevolumes=nil, iscreatejnsgw=nil)
          @EnvId = envid
          @UploadType = uploadtype
          @FlowRatio = flowratio
          @Cpu = cpu
          @Mem = mem
          @MinNum = minnum
          @MaxNum = maxnum
          @PolicyType = policytype
          @PolicyThreshold = policythreshold
          @ContainerPort = containerport
          @ServerName = servername
          @RepositoryType = repositorytype
          @DockerfilePath = dockerfilepath
          @BuildDir = builddir
          @EnvParams = envparams
          @Repository = repository
          @Branch = branch
          @VersionRemark = versionremark
          @PackageName = packagename
          @PackageVersion = packageversion
          @ImageInfo = imageinfo
          @CodeDetail = codedetail
          @ImageSecretInfo = imagesecretinfo
          @ImagePullSecret = imagepullsecret
          @CustomLogs = customlogs
          @InitialDelaySeconds = initialdelayseconds
          @MountVolumeInfo = mountvolumeinfo
          @AccessType = accesstype
          @EsInfo = esinfo
          @EnableUnion = enableunion
          @OperatorRemark = operatorremark
          @ServerPath = serverpath
          @ImageReuseKey = imagereusekey
          @SidecarSpecs = sidecarspecs
          @Security = security
          @ServiceVolumes = servicevolumes
          @IsCreateJnsGw = iscreatejnsgw
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @UploadType = params['UploadType']
          @FlowRatio = params['FlowRatio']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @MinNum = params['MinNum']
          @MaxNum = params['MaxNum']
          @PolicyType = params['PolicyType']
          @PolicyThreshold = params['PolicyThreshold']
          @ContainerPort = params['ContainerPort']
          @ServerName = params['ServerName']
          @RepositoryType = params['RepositoryType']
          @DockerfilePath = params['DockerfilePath']
          @BuildDir = params['BuildDir']
          @EnvParams = params['EnvParams']
          @Repository = params['Repository']
          @Branch = params['Branch']
          @VersionRemark = params['VersionRemark']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          unless params['ImageInfo'].nil?
            @ImageInfo = CloudBaseRunImageInfo.new.deserialize(params['ImageInfo'])
          end
          unless params['CodeDetail'].nil?
            @CodeDetail = CloudBaseCodeRepoDetail.new.deserialize(params['CodeDetail'])
          end
          unless params['ImageSecretInfo'].nil?
            @ImageSecretInfo = CloudBaseRunImageSecretInfo.new.deserialize(params['ImageSecretInfo'])
          end
          @ImagePullSecret = params['ImagePullSecret']
          @CustomLogs = params['CustomLogs']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          unless params['MountVolumeInfo'].nil?
            @MountVolumeInfo = []
            params['MountVolumeInfo'].each do |i|
              @MountVolumeInfo << CloudBaseRunVolumeMount.new.deserialize(i)
            end
          end
          @AccessType = params['AccessType']
          unless params['EsInfo'].nil?
            @EsInfo = CloudBaseEsInfo.new.deserialize(params['EsInfo'])
          end
          @EnableUnion = params['EnableUnion']
          @OperatorRemark = params['OperatorRemark']
          @ServerPath = params['ServerPath']
          @ImageReuseKey = params['ImageReuseKey']
          unless params['SidecarSpecs'].nil?
            @SidecarSpecs = []
            params['SidecarSpecs'].each do |i|
              @SidecarSpecs << CloudBaseRunSideSpec.new.deserialize(i)
            end
          end
          unless params['Security'].nil?
            @Security = CloudBaseSecurityContext.new.deserialize(params['Security'])
          end
          unless params['ServiceVolumes'].nil?
            @ServiceVolumes = []
            params['ServiceVolumes'].each do |i|
              @ServiceVolumes << CloudRunServiceVolume.new.deserialize(i)
            end
          end
          @IsCreateJnsGw = params['IsCreateJnsGw']
        end
      end

      # CreateCloudBaseRunServerVersion返回参数结构体
      class CreateCloudBaseRunServerVersionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 状态(creating/succ)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param VersionName: 版本名称（只有Result为succ的时候，才会返回VersionName)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param RunId: 操作记录id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :VersionName, :RunId, :RequestId
        
        def initialize(result=nil, versionname=nil, runid=nil, requestid=nil)
          @Result = result
          @VersionName = versionname
          @RunId = runid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @VersionName = params['VersionName']
          @RunId = params['RunId']
          @RequestId = params['RequestId']
        end
      end

      # CreateHostingDomain请求参数结构体
      class CreateHostingDomainRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Domain: 域名
        # @type Domain: String
        # @param CertId: 证书ID
        # @type CertId: String

        attr_accessor :EnvId, :Domain, :CertId
        
        def initialize(envid=nil, domain=nil, certid=nil)
          @EnvId = envid
          @Domain = domain
          @CertId = certid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Domain = params['Domain']
          @CertId = params['CertId']
        end
      end

      # CreateHostingDomain返回参数结构体
      class CreateHostingDomainResponse < TencentCloud::Common::AbstractModel
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

      # CreatePostpayPackage请求参数结构体
      class CreatePostpayPackageRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID，需要系统自动创建环境时，此字段不传
        # @type EnvId: String
        # @param WxAppId: 微信 AppId，微信必传
        # @type WxAppId: String
        # @param Source: 付费来源
        # <li>miniapp</li>
        # <li>qcloud</li>
        # @type Source: String
        # @param FreeQuota: 用户享有的免费额度级别，目前只能为“basic”，不传该字段或该字段为空，标识不享受免费额度。
        # @type FreeQuota: String
        # @param EnvSource: 环境创建来源，取值：
        # <li>miniapp</li>
        # <li>qcloud</li>
        # 用法同CreateEnv接口的Source参数
        # 和 Channel 参数同时传，或者同时不传；EnvId 为空时必传。
        # @type EnvSource: String
        # @param Alias: 环境别名，要以a-z开头，不能包含  a-z,0-9,-  以外的字符
        # @type Alias: String
        # @param Channel: 如果envsource为miniapp, channel可以为ide或api;
        # 如果envsource为qcloud, channel可以为qc_console,cocos, qq, cloudgame,dcloud,serverless_framework
        # 和 EnvSource 参数同时传，或者同时不传；EnvId 为空时必传。
        # @type Channel: String
        # @param ExtensionId: 扩展ID
        # @type ExtensionId: String
        # @param Flag: 订单标记。建议使用方统一转大小写之后再判断。
        # <li>QuickStart：快速启动来源</li>
        # <li>Activity：活动来源</li>
        # @type Flag: String

        attr_accessor :EnvId, :WxAppId, :Source, :FreeQuota, :EnvSource, :Alias, :Channel, :ExtensionId, :Flag
        
        def initialize(envid=nil, wxappid=nil, source=nil, freequota=nil, envsource=nil, _alias=nil, channel=nil, extensionid=nil, flag=nil)
          @EnvId = envid
          @WxAppId = wxappid
          @Source = source
          @FreeQuota = freequota
          @EnvSource = envsource
          @Alias = _alias
          @Channel = channel
          @ExtensionId = extensionid
          @Flag = flag
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @WxAppId = params['WxAppId']
          @Source = params['Source']
          @FreeQuota = params['FreeQuota']
          @EnvSource = params['EnvSource']
          @Alias = params['Alias']
          @Channel = params['Channel']
          @ExtensionId = params['ExtensionId']
          @Flag = params['Flag']
        end
      end

      # CreatePostpayPackage返回参数结构体
      class CreatePostpayPackageResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 后付费订单号
        # @type TranId: String
        # @param EnvId: 环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :EnvId, :RequestId
        
        def initialize(tranid=nil, envid=nil, requestid=nil)
          @TranId = tranid
          @EnvId = envid
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @EnvId = params['EnvId']
          @RequestId = params['RequestId']
        end
      end

      # CreateStaticStore请求参数结构体
      class CreateStaticStoreRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param EnableUnion: 是否启用统一域名
        # @type EnableUnion: Boolean

        attr_accessor :EnvId, :EnableUnion
        
        def initialize(envid=nil, enableunion=nil)
          @EnvId = envid
          @EnableUnion = enableunion
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @EnableUnion = params['EnableUnion']
        end
      end

      # CreateStaticStore返回参数结构体
      class CreateStaticStoreResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建静态资源结果(succ/fail)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateWxCloudBaseRunEnv请求参数结构体
      class CreateWxCloudBaseRunEnvRequest < TencentCloud::Common::AbstractModel
        # @param WxAppId: wx应用Id
        # @type WxAppId: String
        # @param Alias: 环境别名，要以a-z开头，不能包含 a-z,0-9,- 以外的字符
        # @type Alias: String
        # @param FreeQuota: 用户享有的免费额度级别，目前只能为“basic”，不传该字段或该字段为空，标识不享受免费额度。
        # @type FreeQuota: String
        # @param Flag: 订单标记。建议使用方统一转大小写之后再判断。
        # QuickStart：快速启动来源
        # Activity：活动来源
        # @type Flag: String
        # @param VpcId: 私有网络Id
        # @type VpcId: String
        # @param SubNetIds: 子网列表
        # @type SubNetIds: Array

        attr_accessor :WxAppId, :Alias, :FreeQuota, :Flag, :VpcId, :SubNetIds
        
        def initialize(wxappid=nil, _alias=nil, freequota=nil, flag=nil, vpcid=nil, subnetids=nil)
          @WxAppId = wxappid
          @Alias = _alias
          @FreeQuota = freequota
          @Flag = flag
          @VpcId = vpcid
          @SubNetIds = subnetids
        end

        def deserialize(params)
          @WxAppId = params['WxAppId']
          @Alias = params['Alias']
          @FreeQuota = params['FreeQuota']
          @Flag = params['Flag']
          @VpcId = params['VpcId']
          @SubNetIds = params['SubNetIds']
        end
      end

      # CreateWxCloudBaseRunEnv返回参数结构体
      class CreateWxCloudBaseRunEnvResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param TranId: 后付费订单号
        # @type TranId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :TranId, :RequestId
        
        def initialize(envid=nil, tranid=nil, requestid=nil)
          @EnvId = envid
          @TranId = tranid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @TranId = params['TranId']
          @RequestId = params['RequestId']
        end
      end

      # CreateWxCloudBaseRunServerDBCluster请求参数结构体
      class CreateWxCloudBaseRunServerDBClusterRequest < TencentCloud::Common::AbstractModel
        # @param AccountPassword: 账户密码
        # @type AccountPassword: String
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param WxAppId: 微信appid
        # @type WxAppId: String

        attr_accessor :AccountPassword, :EnvId, :WxAppId
        
        def initialize(accountpassword=nil, envid=nil, wxappid=nil)
          @AccountPassword = accountpassword
          @EnvId = envid
          @WxAppId = wxappid
        end

        def deserialize(params)
          @AccountPassword = params['AccountPassword']
          @EnvId = params['EnvId']
          @WxAppId = params['WxAppId']
        end
      end

      # CreateWxCloudBaseRunServerDBCluster返回参数结构体
      class CreateWxCloudBaseRunServerDBClusterResponse < TencentCloud::Common::AbstractModel
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

      # 数据库资源信息
      class DatabasesInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库唯一标识
        # @type InstanceId: String
        # @param Status: 状态。包含以下取值：
        # <li>INITIALIZING：资源初始化中</li>
        # <li>RUNNING：运行中，可正常使用的状态</li>
        # <li>UNUSABLE：禁用，不可用</li>
        # <li>OVERDUE：资源过期</li>
        # @type Status: String
        # @param Region: 所属地域。
        # 当前支持ap-shanghai
        # @type Region: String

        attr_accessor :InstanceId, :Status, :Region
        
        def initialize(instanceid=nil, status=nil, region=nil)
          @InstanceId = instanceid
          @Status = status
          @Region = region
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @Region = params['Region']
        end
      end

      # DeleteCloudBaseProjectLatestVersion请求参数结构体
      class DeleteCloudBaseProjectLatestVersionRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param ProjectName: 项目名
        # @type ProjectName: String

        attr_accessor :EnvId, :ProjectName
        
        def initialize(envid=nil, projectname=nil)
          @EnvId = envid
          @ProjectName = projectname
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ProjectName = params['ProjectName']
        end
      end

      # DeleteCloudBaseProjectLatestVersion返回参数结构体
      class DeleteCloudBaseProjectLatestVersionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEndUser请求参数结构体
      class DeleteEndUserRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param UserList: 用户列表，每一项都是uuid
        # @type UserList: Array

        attr_accessor :EnvId, :UserList
        
        def initialize(envid=nil, userlist=nil)
          @EnvId = envid
          @UserList = userlist
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @UserList = params['UserList']
        end
      end

      # DeleteEndUser返回参数结构体
      class DeleteEndUserResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWxGatewayRoute请求参数结构体
      class DeleteWxGatewayRouteRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param GatewayRouteName: 服务名称
        # @type GatewayRouteName: String

        attr_accessor :EnvId, :GatewayRouteName
        
        def initialize(envid=nil, gatewayroutename=nil)
          @EnvId = envid
          @GatewayRouteName = gatewayroutename
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @GatewayRouteName = params['GatewayRouteName']
        end
      end

      # DeleteWxGatewayRoute返回参数结构体
      class DeleteWxGatewayRouteResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAuthDomains请求参数结构体
      class DescribeAuthDomainsRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeAuthDomains返回参数结构体
      class DescribeAuthDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Domains: 安全域名列表列表
        # @type Domains: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domains, :RequestId
        
        def initialize(domains=nil, requestid=nil)
          @Domains = domains
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              @Domains << AuthDomain.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseBuildService请求参数结构体
      class DescribeCloudBaseBuildServiceRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param ServiceName: 服务名
        # @type ServiceName: String
        # @param CIBusiness: build类型,枚举值有: cloudbaserun, framework-ci
        # @type CIBusiness: String
        # @param ServiceVersion: 服务版本
        # @type ServiceVersion: String

        attr_accessor :EnvId, :ServiceName, :CIBusiness, :ServiceVersion
        
        def initialize(envid=nil, servicename=nil, cibusiness=nil, serviceversion=nil)
          @EnvId = envid
          @ServiceName = servicename
          @CIBusiness = cibusiness
          @ServiceVersion = serviceversion
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServiceName = params['ServiceName']
          @CIBusiness = params['CIBusiness']
          @ServiceVersion = params['ServiceVersion']
        end
      end

      # DescribeCloudBaseBuildService返回参数结构体
      class DescribeCloudBaseBuildServiceResponse < TencentCloud::Common::AbstractModel
        # @param UploadUrl: 上传url
        # @type UploadUrl: String
        # @param UploadHeaders: 上传heder
        # @type UploadHeaders: Array
        # @param PackageName: 包名
        # @type PackageName: String
        # @param PackageVersion: 包版本
        # @type PackageVersion: String
        # @param DownloadUrl: 下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param DownloadHeaders: 下载Httpheader
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadHeaders: Array
        # @param OutDate: 下载链接是否过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutDate: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UploadUrl, :UploadHeaders, :PackageName, :PackageVersion, :DownloadUrl, :DownloadHeaders, :OutDate, :RequestId
        
        def initialize(uploadurl=nil, uploadheaders=nil, packagename=nil, packageversion=nil, downloadurl=nil, downloadheaders=nil, outdate=nil, requestid=nil)
          @UploadUrl = uploadurl
          @UploadHeaders = uploadheaders
          @PackageName = packagename
          @PackageVersion = packageversion
          @DownloadUrl = downloadurl
          @DownloadHeaders = downloadheaders
          @OutDate = outdate
          @RequestId = requestid
        end

        def deserialize(params)
          @UploadUrl = params['UploadUrl']
          unless params['UploadHeaders'].nil?
            @UploadHeaders = []
            params['UploadHeaders'].each do |i|
              @UploadHeaders << KVPair.new.deserialize(i)
            end
          end
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @DownloadUrl = params['DownloadUrl']
          unless params['DownloadHeaders'].nil?
            @DownloadHeaders = []
            params['DownloadHeaders'].each do |i|
              @DownloadHeaders << KVPair.new.deserialize(i)
            end
          end
          @OutDate = params['OutDate']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseProjectLatestVersionList请求参数结构体
      class DescribeCloudBaseProjectLatestVersionListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param PageSize: 个数
        # @type PageSize: Integer
        # @param EnvId: 环境id, 非必填
        # @type EnvId: String
        # @param ProjectName: 项目名称, 非必填
        # @type ProjectName: String
        # @param ProjectType: 项目类型: framework-oneclick,qci-extension-cicd
        # @type ProjectType: String
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :Offset, :PageSize, :EnvId, :ProjectName, :ProjectType, :Tags
        
        def initialize(offset=nil, pagesize=nil, envid=nil, projectname=nil, projecttype=nil, tags=nil)
          @Offset = offset
          @PageSize = pagesize
          @EnvId = envid
          @ProjectName = projectname
          @ProjectType = projecttype
          @Tags = tags
        end

        def deserialize(params)
          @Offset = params['Offset']
          @PageSize = params['PageSize']
          @EnvId = params['EnvId']
          @ProjectName = params['ProjectName']
          @ProjectType = params['ProjectType']
          @Tags = params['Tags']
        end
      end

      # DescribeCloudBaseProjectLatestVersionList返回参数结构体
      class DescribeCloudBaseProjectLatestVersionListResponse < TencentCloud::Common::AbstractModel
        # @param ProjectList: 项目列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectList: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectList, :TotalCount, :RequestId
        
        def initialize(projectlist=nil, totalcount=nil, requestid=nil)
          @ProjectList = projectlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectList'].nil?
            @ProjectList = []
            params['ProjectList'].each do |i|
              @ProjectList << CloudBaseProjectVersion.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseProjectVersionList请求参数结构体
      class DescribeCloudBaseProjectVersionListRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param PageNum: 第几页,从0开始
        # @type PageNum: Integer
        # @param StartTime: 起始时间 2021-03-27 12:00:00
        # @type StartTime: String
        # @param EndTime: 终止时间 2021-03-27 12:00:00
        # @type EndTime: String

        attr_accessor :EnvId, :ProjectName, :PageSize, :PageNum, :StartTime, :EndTime
        
        def initialize(envid=nil, projectname=nil, pagesize=nil, pagenum=nil, starttime=nil, endtime=nil)
          @EnvId = envid
          @ProjectName = projectname
          @PageSize = pagesize
          @PageNum = pagenum
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ProjectName = params['ProjectName']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeCloudBaseProjectVersionList返回参数结构体
      class DescribeCloudBaseProjectVersionListResponse < TencentCloud::Common::AbstractModel
        # @param ProjectVersions: 版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectVersions: Array
        # @param TotalCount: 总个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectVersions, :TotalCount, :RequestId
        
        def initialize(projectversions=nil, totalcount=nil, requestid=nil)
          @ProjectVersions = projectversions
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectVersions'].nil?
            @ProjectVersions = []
            params['ProjectVersions'].each do |i|
              @ProjectVersions << CloudBaseProjectVersion.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseRunResourceForExtend请求参数结构体
      class DescribeCloudBaseRunResourceForExtendRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeCloudBaseRunResourceForExtend返回参数结构体
      class DescribeCloudBaseRunResourceForExtendResponse < TencentCloud::Common::AbstractModel
        # @param ClusterStatus: 集群状态(creating/succ)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: String
        # @param VirtualClusterId: 虚拟集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualClusterId: String
        # @param VpcId: vpc id信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param Region: 地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param SubnetIds: 子网信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterStatus, :VirtualClusterId, :VpcId, :Region, :SubnetIds, :RequestId
        
        def initialize(clusterstatus=nil, virtualclusterid=nil, vpcid=nil, region=nil, subnetids=nil, requestid=nil)
          @ClusterStatus = clusterstatus
          @VirtualClusterId = virtualclusterid
          @VpcId = vpcid
          @Region = region
          @SubnetIds = subnetids
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterStatus = params['ClusterStatus']
          @VirtualClusterId = params['VirtualClusterId']
          @VpcId = params['VpcId']
          @Region = params['Region']
          unless params['SubnetIds'].nil?
            @SubnetIds = []
            params['SubnetIds'].each do |i|
              @SubnetIds << CloudBaseRunVpcSubnet.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseRunResource请求参数结构体
      class DescribeCloudBaseRunResourceRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeCloudBaseRunResource返回参数结构体
      class DescribeCloudBaseRunResourceResponse < TencentCloud::Common::AbstractModel
        # @param ClusterStatus: 集群状态(creating/succ)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: String
        # @param VirtualClusterId: 虚拟集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualClusterId: String
        # @param VpcId: vpc id信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param Region: 地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param SubnetIds: 子网信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterStatus, :VirtualClusterId, :VpcId, :Region, :SubnetIds, :RequestId
        
        def initialize(clusterstatus=nil, virtualclusterid=nil, vpcid=nil, region=nil, subnetids=nil, requestid=nil)
          @ClusterStatus = clusterstatus
          @VirtualClusterId = virtualclusterid
          @VpcId = vpcid
          @Region = region
          @SubnetIds = subnetids
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterStatus = params['ClusterStatus']
          @VirtualClusterId = params['VirtualClusterId']
          @VpcId = params['VpcId']
          @Region = params['Region']
          unless params['SubnetIds'].nil?
            @SubnetIds = []
            params['SubnetIds'].each do |i|
              @SubnetIds << CloudBaseRunVpcSubnet.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseRunServerVersion请求参数结构体
      class DescribeCloudBaseRunServerVersionRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param ServerName: 服务名称
        # @type ServerName: String
        # @param VersionName: 版本名称
        # @type VersionName: String

        attr_accessor :EnvId, :ServerName, :VersionName
        
        def initialize(envid=nil, servername=nil, versionname=nil)
          @EnvId = envid
          @ServerName = servername
          @VersionName = versionname
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @VersionName = params['VersionName']
        end
      end

      # DescribeCloudBaseRunServerVersion返回参数结构体
      class DescribeCloudBaseRunServerVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本名称
        # @type VersionName: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param DockerfilePath: Dockefile的路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DockerfilePath: String
        # @param BuildDir: DockerBuild的目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildDir: String
        # @param Cpu: 请使用CPUSize
        # @type Cpu: Integer
        # @param Mem: 请使用MemSize
        # @type Mem: Integer
        # @param MinNum: 副本最小值
        # @type MinNum: Integer
        # @param MaxNum: 副本最大值
        # @type MaxNum: Integer
        # @param PolicyType: 策略类型
        # @type PolicyType: String
        # @param PolicyThreshold: 策略阈值
        # @type PolicyThreshold: Float
        # @param EnvParams: 环境变量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvParams: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # @type UpdatedTime: String
        # @param VersionIP: 版本的IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionIP: String
        # @param VersionPort: 版本的端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionPort: Integer
        # @param Status: 版本状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param PackageName: 代码包的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param PackageVersion: 代码版本的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageVersion: String
        # @param UploadType: 枚举（package/repository/image)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UploadType: String
        # @param RepoType: Repo的类型(gitlab/github/coding)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoType: String
        # @param Repo: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Repo: String
        # @param Branch: 分支
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branch: String
        # @param ServerName: 服务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerName: String
        # @param IsPublic: 是否对于外网开放
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPublic: Boolean
        # @param VpcId: vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetIds: 子网实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param CustomLogs: 日志采集路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomLogs: String
        # @param ContainerPort: 监听端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerPort: Integer
        # @param InitialDelaySeconds: 延迟多长时间开始健康检查（单位s）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialDelaySeconds: Integer
        # @param ImageUrl: 镜像地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String
        # @param CpuSize: CPU 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuSize: Float
        # @param MemSize: MEM 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionName, :Remark, :DockerfilePath, :BuildDir, :Cpu, :Mem, :MinNum, :MaxNum, :PolicyType, :PolicyThreshold, :EnvParams, :CreatedTime, :UpdatedTime, :VersionIP, :VersionPort, :Status, :PackageName, :PackageVersion, :UploadType, :RepoType, :Repo, :Branch, :ServerName, :IsPublic, :VpcId, :SubnetIds, :CustomLogs, :ContainerPort, :InitialDelaySeconds, :ImageUrl, :CpuSize, :MemSize, :RequestId
        
        def initialize(versionname=nil, remark=nil, dockerfilepath=nil, builddir=nil, cpu=nil, mem=nil, minnum=nil, maxnum=nil, policytype=nil, policythreshold=nil, envparams=nil, createdtime=nil, updatedtime=nil, versionip=nil, versionport=nil, status=nil, packagename=nil, packageversion=nil, uploadtype=nil, repotype=nil, repo=nil, branch=nil, servername=nil, ispublic=nil, vpcid=nil, subnetids=nil, customlogs=nil, containerport=nil, initialdelayseconds=nil, imageurl=nil, cpusize=nil, memsize=nil, requestid=nil)
          @VersionName = versionname
          @Remark = remark
          @DockerfilePath = dockerfilepath
          @BuildDir = builddir
          @Cpu = cpu
          @Mem = mem
          @MinNum = minnum
          @MaxNum = maxnum
          @PolicyType = policytype
          @PolicyThreshold = policythreshold
          @EnvParams = envparams
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @VersionIP = versionip
          @VersionPort = versionport
          @Status = status
          @PackageName = packagename
          @PackageVersion = packageversion
          @UploadType = uploadtype
          @RepoType = repotype
          @Repo = repo
          @Branch = branch
          @ServerName = servername
          @IsPublic = ispublic
          @VpcId = vpcid
          @SubnetIds = subnetids
          @CustomLogs = customlogs
          @ContainerPort = containerport
          @InitialDelaySeconds = initialdelayseconds
          @ImageUrl = imageurl
          @CpuSize = cpusize
          @MemSize = memsize
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @Remark = params['Remark']
          @DockerfilePath = params['DockerfilePath']
          @BuildDir = params['BuildDir']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @MinNum = params['MinNum']
          @MaxNum = params['MaxNum']
          @PolicyType = params['PolicyType']
          @PolicyThreshold = params['PolicyThreshold']
          @EnvParams = params['EnvParams']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @VersionIP = params['VersionIP']
          @VersionPort = params['VersionPort']
          @Status = params['Status']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @UploadType = params['UploadType']
          @RepoType = params['RepoType']
          @Repo = params['Repo']
          @Branch = params['Branch']
          @ServerName = params['ServerName']
          @IsPublic = params['IsPublic']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @CustomLogs = params['CustomLogs']
          @ContainerPort = params['ContainerPort']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @ImageUrl = params['ImageUrl']
          @CpuSize = params['CpuSize']
          @MemSize = params['MemSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseRunVersion请求参数结构体
      class DescribeCloudBaseRunVersionRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param ServerName: 服务名称
        # @type ServerName: String
        # @param VersionName: 版本名称
        # @type VersionName: String

        attr_accessor :EnvId, :ServerName, :VersionName
        
        def initialize(envid=nil, servername=nil, versionname=nil)
          @EnvId = envid
          @ServerName = servername
          @VersionName = versionname
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @VersionName = params['VersionName']
        end
      end

      # DescribeCloudBaseRunVersion返回参数结构体
      class DescribeCloudBaseRunVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本名称
        # @type VersionName: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param DockerfilePath: Dockefile的路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DockerfilePath: String
        # @param BuildDir: DockerBuild的目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildDir: String
        # @param MinNum: 副本最小值
        # @type MinNum: Integer
        # @param MaxNum: 副本最大值
        # @type MaxNum: Integer
        # @param PolicyType: 策略类型
        # @type PolicyType: String
        # @param PolicyThreshold: 策略阈值
        # @type PolicyThreshold: Float
        # @param EnvParams: 环境变量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvParams: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # @type UpdatedTime: String
        # @param VersionIP: 版本的IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionIP: String
        # @param VersionPort: 版本的端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionPort: Integer
        # @param Status: 版本状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param PackageName: 代码包的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param PackageVersion: 代码版本的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageVersion: String
        # @param UploadType: 枚举（package/repository/image)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UploadType: String
        # @param RepoType: Repo的类型(coding/gitlab/github/coding)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoType: String
        # @param Repo: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Repo: String
        # @param Branch: 分支
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branch: String
        # @param ServerName: 服务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerName: String
        # @param IsPublic: 是否对于外网开放
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPublic: Boolean
        # @param VpcId: vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetIds: 子网实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param CustomLogs: 日志采集路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomLogs: String
        # @param ContainerPort: 监听端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerPort: Integer
        # @param InitialDelaySeconds: 延迟多长时间开始健康检查（单位s）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialDelaySeconds: Integer
        # @param ImageUrl: 镜像地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String
        # @param CpuSize: CPU 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuSize: Float
        # @param MemSize: MEM 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionName, :Remark, :DockerfilePath, :BuildDir, :MinNum, :MaxNum, :PolicyType, :PolicyThreshold, :EnvParams, :CreatedTime, :UpdatedTime, :VersionIP, :VersionPort, :Status, :PackageName, :PackageVersion, :UploadType, :RepoType, :Repo, :Branch, :ServerName, :IsPublic, :VpcId, :SubnetIds, :CustomLogs, :ContainerPort, :InitialDelaySeconds, :ImageUrl, :CpuSize, :MemSize, :RequestId
        
        def initialize(versionname=nil, remark=nil, dockerfilepath=nil, builddir=nil, minnum=nil, maxnum=nil, policytype=nil, policythreshold=nil, envparams=nil, createdtime=nil, updatedtime=nil, versionip=nil, versionport=nil, status=nil, packagename=nil, packageversion=nil, uploadtype=nil, repotype=nil, repo=nil, branch=nil, servername=nil, ispublic=nil, vpcid=nil, subnetids=nil, customlogs=nil, containerport=nil, initialdelayseconds=nil, imageurl=nil, cpusize=nil, memsize=nil, requestid=nil)
          @VersionName = versionname
          @Remark = remark
          @DockerfilePath = dockerfilepath
          @BuildDir = builddir
          @MinNum = minnum
          @MaxNum = maxnum
          @PolicyType = policytype
          @PolicyThreshold = policythreshold
          @EnvParams = envparams
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @VersionIP = versionip
          @VersionPort = versionport
          @Status = status
          @PackageName = packagename
          @PackageVersion = packageversion
          @UploadType = uploadtype
          @RepoType = repotype
          @Repo = repo
          @Branch = branch
          @ServerName = servername
          @IsPublic = ispublic
          @VpcId = vpcid
          @SubnetIds = subnetids
          @CustomLogs = customlogs
          @ContainerPort = containerport
          @InitialDelaySeconds = initialdelayseconds
          @ImageUrl = imageurl
          @CpuSize = cpusize
          @MemSize = memsize
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @Remark = params['Remark']
          @DockerfilePath = params['DockerfilePath']
          @BuildDir = params['BuildDir']
          @MinNum = params['MinNum']
          @MaxNum = params['MaxNum']
          @PolicyType = params['PolicyType']
          @PolicyThreshold = params['PolicyThreshold']
          @EnvParams = params['EnvParams']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @VersionIP = params['VersionIP']
          @VersionPort = params['VersionPort']
          @Status = params['Status']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @UploadType = params['UploadType']
          @RepoType = params['RepoType']
          @Repo = params['Repo']
          @Branch = params['Branch']
          @ServerName = params['ServerName']
          @IsPublic = params['IsPublic']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @CustomLogs = params['CustomLogs']
          @ContainerPort = params['ContainerPort']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @ImageUrl = params['ImageUrl']
          @CpuSize = params['CpuSize']
          @MemSize = params['MemSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseRunVersionSnapshot请求参数结构体
      class DescribeCloudBaseRunVersionSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param VersionName: 版本名
        # @type VersionName: String
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param SnapshotName: 版本历史名
        # @type SnapshotName: String
        # @param Offset: 偏移量。默认0
        # @type Offset: Integer
        # @param Limit: 限制大小。默认10，最大20
        # @type Limit: Integer

        attr_accessor :ServerName, :VersionName, :EnvId, :SnapshotName, :Offset, :Limit
        
        def initialize(servername=nil, versionname=nil, envid=nil, snapshotname=nil, offset=nil, limit=nil)
          @ServerName = servername
          @VersionName = versionname
          @EnvId = envid
          @SnapshotName = snapshotname
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ServerName = params['ServerName']
          @VersionName = params['VersionName']
          @EnvId = params['EnvId']
          @SnapshotName = params['SnapshotName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCloudBaseRunVersionSnapshot返回参数结构体
      class DescribeCloudBaseRunVersionSnapshotResponse < TencentCloud::Common::AbstractModel
        # @param Snapshots: 版本历史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Snapshots: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Snapshots, :RequestId
        
        def initialize(snapshots=nil, requestid=nil)
          @Snapshots = snapshots
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Snapshots'].nil?
            @Snapshots = []
            params['Snapshots'].each do |i|
              @Snapshots << CloudRunServiceSimpleVersionSnapshot.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseACL请求参数结构体
      class DescribeDatabaseACLRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionName: 集合名称
        # @type CollectionName: String

        attr_accessor :EnvId, :CollectionName
        
        def initialize(envid=nil, collectionname=nil)
          @EnvId = envid
          @CollectionName = collectionname
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionName = params['CollectionName']
        end
      end

      # DescribeDatabaseACL返回参数结构体
      class DescribeDatabaseACLResponse < TencentCloud::Common::AbstractModel
        # @param AclTag: 权限标签。包含以下取值：
        # <li> READONLY：所有用户可读，仅创建者和管理员可写</li>
        # <li> PRIVATE：仅创建者及管理员可读写</li>
        # <li> ADMINWRITE：所有用户可读，仅管理员可写</li>
        # <li> ADMINONLY：仅管理员可读写</li>
        # @type AclTag: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AclTag, :RequestId
        
        def initialize(acltag=nil, requestid=nil)
          @AclTag = acltag
          @RequestId = requestid
        end

        def deserialize(params)
          @AclTag = params['AclTag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDownloadFile请求参数结构体
      class DescribeDownloadFileRequest < TencentCloud::Common::AbstractModel
        # @param CodeUri: 代码uri
        # @type CodeUri: String

        attr_accessor :CodeUri
        
        def initialize(codeuri=nil)
          @CodeUri = codeuri
        end

        def deserialize(params)
          @CodeUri = params['CodeUri']
        end
      end

      # DescribeDownloadFile返回参数结构体
      class DescribeDownloadFileResponse < TencentCloud::Common::AbstractModel
        # @param FilePath: 文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePath: String
        # @param CustomKey: 加密key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomKey: String
        # @param DownloadUrl: 下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FilePath, :CustomKey, :DownloadUrl, :RequestId
        
        def initialize(filepath=nil, customkey=nil, downloadurl=nil, requestid=nil)
          @FilePath = filepath
          @CustomKey = customkey
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FilePath = params['FilePath']
          @CustomKey = params['CustomKey']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEndUserLoginStatistic请求参数结构体
      class DescribeEndUserLoginStatisticRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param Source: 终端用户来源
        # <li> qcloud </li>
        # <li>miniapp</li>
        # @type Source: String

        attr_accessor :EnvId, :Source
        
        def initialize(envid=nil, source=nil)
          @EnvId = envid
          @Source = source
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Source = params['Source']
        end
      end

      # DescribeEndUserLoginStatistic返回参数结构体
      class DescribeEndUserLoginStatisticResponse < TencentCloud::Common::AbstractModel
        # @param LoginStatistics: 环境终端用户新增与登录统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginStatistics, :RequestId
        
        def initialize(loginstatistics=nil, requestid=nil)
          @LoginStatistics = loginstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoginStatistics'].nil?
            @LoginStatistics = []
            params['LoginStatistics'].each do |i|
              @LoginStatistics << LoginStatistic.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEndUserStatistic请求参数结构体
      class DescribeEndUserStatisticRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeEndUserStatistic返回参数结构体
      class DescribeEndUserStatisticResponse < TencentCloud::Common::AbstractModel
        # @param PlatformStatistics: 终端用户各平台统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlatformStatistics: Array
        # @param TotalCount: 终端用户总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlatformStatistics, :TotalCount, :RequestId
        
        def initialize(platformstatistics=nil, totalcount=nil, requestid=nil)
          @PlatformStatistics = platformstatistics
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlatformStatistics'].nil?
            @PlatformStatistics = []
            params['PlatformStatistics'].each do |i|
              @PlatformStatistics << PlatformStatistic.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEndUsers请求参数结构体
      class DescribeEndUsersRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 开发者的环境ID
        # @type EnvId: String
        # @param Offset: 可选参数，偏移量，默认 0
        # @type Offset: Integer
        # @param Limit: 可选参数，拉取数量，默认 20
        # @type Limit: Integer
        # @param UUIds: 按照 uuid 列表过滤，最大个数为100
        # @type UUIds: Array

        attr_accessor :EnvId, :Offset, :Limit, :UUIds
        
        def initialize(envid=nil, offset=nil, limit=nil, uuids=nil)
          @EnvId = envid
          @Offset = offset
          @Limit = limit
          @UUIds = uuids
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @UUIds = params['UUIds']
        end
      end

      # DescribeEndUsers返回参数结构体
      class DescribeEndUsersResponse < TencentCloud::Common::AbstractModel
        # @param Total: 用户总数
        # @type Total: Integer
        # @param Users: 用户列表
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Users, :RequestId
        
        def initialize(total=nil, users=nil, requestid=nil)
          @Total = total
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              @Users << EndUserInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvFreeQuota请求参数结构体
      class DescribeEnvFreeQuotaRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param ResourceTypes: 资源类型：可选值：CDN, COS, FLEXDB, HOSTING, SCF
        # 不传则返回全部资源指标
        # @type ResourceTypes: Array

        attr_accessor :EnvId, :ResourceTypes
        
        def initialize(envid=nil, resourcetypes=nil)
          @EnvId = envid
          @ResourceTypes = resourcetypes
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ResourceTypes = params['ResourceTypes']
        end
      end

      # DescribeEnvFreeQuota返回参数结构体
      class DescribeEnvFreeQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaItems: 免费抵扣配额详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaItems, :RequestId
        
        def initialize(quotaitems=nil, requestid=nil)
          @QuotaItems = quotaitems
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaItems'].nil?
            @QuotaItems = []
            params['QuotaItems'].each do |i|
              @QuotaItems << PostpayEnvQuota.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvLimit请求参数结构体
      class DescribeEnvLimitRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEnvLimit返回参数结构体
      class DescribeEnvLimitResponse < TencentCloud::Common::AbstractModel
        # @param MaxEnvNum: 环境总数上限
        # @type MaxEnvNum: Integer
        # @param CurrentEnvNum: 目前环境总数
        # @type CurrentEnvNum: Integer
        # @param MaxFreeEnvNum: 免费环境数量上限
        # @type MaxFreeEnvNum: Integer
        # @param CurrentFreeEnvNum: 目前免费环境数量
        # @type CurrentFreeEnvNum: Integer
        # @param MaxDeleteTotal: 总计允许销毁环境次数上限
        # @type MaxDeleteTotal: Integer
        # @param CurrentDeleteTotal: 目前已销毁环境次数
        # @type CurrentDeleteTotal: Integer
        # @param MaxDeleteMonthly: 每月允许销毁环境次数上限
        # @type MaxDeleteMonthly: Integer
        # @param CurrentDeleteMonthly: 本月已销毁环境次数
        # @type CurrentDeleteMonthly: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaxEnvNum, :CurrentEnvNum, :MaxFreeEnvNum, :CurrentFreeEnvNum, :MaxDeleteTotal, :CurrentDeleteTotal, :MaxDeleteMonthly, :CurrentDeleteMonthly, :RequestId
        
        def initialize(maxenvnum=nil, currentenvnum=nil, maxfreeenvnum=nil, currentfreeenvnum=nil, maxdeletetotal=nil, currentdeletetotal=nil, maxdeletemonthly=nil, currentdeletemonthly=nil, requestid=nil)
          @MaxEnvNum = maxenvnum
          @CurrentEnvNum = currentenvnum
          @MaxFreeEnvNum = maxfreeenvnum
          @CurrentFreeEnvNum = currentfreeenvnum
          @MaxDeleteTotal = maxdeletetotal
          @CurrentDeleteTotal = currentdeletetotal
          @MaxDeleteMonthly = maxdeletemonthly
          @CurrentDeleteMonthly = currentdeletemonthly
          @RequestId = requestid
        end

        def deserialize(params)
          @MaxEnvNum = params['MaxEnvNum']
          @CurrentEnvNum = params['CurrentEnvNum']
          @MaxFreeEnvNum = params['MaxFreeEnvNum']
          @CurrentFreeEnvNum = params['CurrentFreeEnvNum']
          @MaxDeleteTotal = params['MaxDeleteTotal']
          @CurrentDeleteTotal = params['CurrentDeleteTotal']
          @MaxDeleteMonthly = params['MaxDeleteMonthly']
          @CurrentDeleteMonthly = params['CurrentDeleteMonthly']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvs请求参数结构体
      class DescribeEnvsRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID，如果传了这个参数则只返回该环境的相关信息
        # @type EnvId: String
        # @param IsVisible: 指定Channels字段为可见渠道列表或不可见渠道列表
        # 如只想获取渠道A的环境 就填写IsVisible= true,Channels = ["A"], 过滤渠道A拉取其他渠道环境时填写IsVisible= false,Channels = ["A"]
        # @type IsVisible: Boolean
        # @param Channels: 渠道列表，代表可见或不可见渠道由IsVisible参数指定
        # @type Channels: Array

        attr_accessor :EnvId, :IsVisible, :Channels
        
        def initialize(envid=nil, isvisible=nil, channels=nil)
          @EnvId = envid
          @IsVisible = isvisible
          @Channels = channels
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @IsVisible = params['IsVisible']
          @Channels = params['Channels']
        end
      end

      # DescribeEnvs返回参数结构体
      class DescribeEnvsResponse < TencentCloud::Common::AbstractModel
        # @param EnvList: 环境信息列表
        # @type EnvList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvList, :RequestId
        
        def initialize(envlist=nil, requestid=nil)
          @EnvList = envlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvList'].nil?
            @EnvList = []
            params['EnvList'].each do |i|
              @EnvList << EnvInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtensionUploadInfo请求参数结构体
      class DescribeExtensionUploadInfoRequest < TencentCloud::Common::AbstractModel
        # @param ExtensionFiles: 待上传的文件
        # @type ExtensionFiles: Array

        attr_accessor :ExtensionFiles
        
        def initialize(extensionfiles=nil)
          @ExtensionFiles = extensionfiles
        end

        def deserialize(params)
          unless params['ExtensionFiles'].nil?
            @ExtensionFiles = []
            params['ExtensionFiles'].each do |i|
              @ExtensionFiles << ExtensionFile.new.deserialize(i)
            end
          end
        end
      end

      # DescribeExtensionUploadInfo返回参数结构体
      class DescribeExtensionUploadInfoResponse < TencentCloud::Common::AbstractModel
        # @param FilesData: 待上传文件的信息数组
        # @type FilesData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FilesData, :RequestId
        
        def initialize(filesdata=nil, requestid=nil)
          @FilesData = filesdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FilesData'].nil?
            @FilesData = []
            params['FilesData'].each do |i|
              @FilesData << ExtensionFileInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtraPkgBillingInfo请求参数结构体
      class DescribeExtraPkgBillingInfoRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 已购买增值包的环境ID
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeExtraPkgBillingInfo返回参数结构体
      class DescribeExtraPkgBillingInfoResponse < TencentCloud::Common::AbstractModel
        # @param EnvInfoList: 增值包计费信息列表
        # @type EnvInfoList: Array
        # @param Total: 增值包数目
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvInfoList, :Total, :RequestId
        
        def initialize(envinfolist=nil, total=nil, requestid=nil)
          @EnvInfoList = envinfolist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvInfoList'].nil?
            @EnvInfoList = []
            params['EnvInfoList'].each do |i|
              @EnvInfoList << EnvBillingInfoItem.new.deserialize(i)
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePostpayFreeQuotas请求参数结构体
      class DescribePostpayFreeQuotasRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribePostpayFreeQuotas返回参数结构体
      class DescribePostpayFreeQuotasResponse < TencentCloud::Common::AbstractModel
        # @param FreequotaInfoList: 免费量资源信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreequotaInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FreequotaInfoList, :RequestId
        
        def initialize(freequotainfolist=nil, requestid=nil)
          @FreequotaInfoList = freequotainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FreequotaInfoList'].nil?
            @FreequotaInfoList = []
            params['FreequotaInfoList'].each do |i|
              @FreequotaInfoList << FreequotaInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePostpayPackageFreeQuotas请求参数结构体
      class DescribePostpayPackageFreeQuotasRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param FreeQuotaType: 免费额度类型标识
        # @type FreeQuotaType: String

        attr_accessor :EnvId, :FreeQuotaType
        
        def initialize(envid=nil, freequotatype=nil)
          @EnvId = envid
          @FreeQuotaType = freequotatype
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @FreeQuotaType = params['FreeQuotaType']
        end
      end

      # DescribePostpayPackageFreeQuotas返回参数结构体
      class DescribePostpayPackageFreeQuotasResponse < TencentCloud::Common::AbstractModel
        # @param PackageFreeQuotaInfos: 免费量资源信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageFreeQuotaInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackageFreeQuotaInfos, :RequestId
        
        def initialize(packagefreequotainfos=nil, requestid=nil)
          @PackageFreeQuotaInfos = packagefreequotainfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PackageFreeQuotaInfos'].nil?
            @PackageFreeQuotaInfos = []
            params['PackageFreeQuotaInfos'].each do |i|
              @PackageFreeQuotaInfos << PackageFreeQuotaInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuotaData请求参数结构体
      class DescribeQuotaDataRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param MetricName: <li> 指标名: </li>
        # <li> StorageSizepkg: 当月存储空间容量, 单位MB </li>
        # <li> StorageReadpkg: 当月存储读请求次数 </li>
        # <li> StorageWritepkg: 当月存储写请求次数 </li>
        # <li> StorageCdnOriginFluxpkg: 当月CDN回源流量, 单位字节 </li>
        # <li> StorageCdnOriginFluxpkgDay: 当日CDN回源流量, 单位字节 </li>
        # <li> StorageReadpkgDay: 当日存储读请求次数 </li>
        # <li> StorageWritepkgDay: 当日写请求次数 </li>
        # <li> CDNFluxpkg: 当月CDN流量, 单位为字节 </li>
        # <li> CDNFluxpkgDay: 当日CDN流量, 单位为字节 </li>
        # <li> FunctionInvocationpkg: 当月云函数调用次数 </li>
        # <li> FunctionGBspkg: 当月云函数资源使用量, 单位Mb*Ms </li>
        # <li> FunctionFluxpkg: 当月云函数流量, 单位千字节(KB) </li>
        # <li> FunctionInvocationpkgDay: 当日云函数调用次数 </li>
        # <li> FunctionGBspkgDay: 当日云函数资源使用量, 单位Mb*Ms </li>
        # <li> FunctionFluxpkgDay: 当日云函数流量, 单位千字节(KB) </li>
        # <li> DbSizepkg: 当月数据库容量大小, 单位MB </li>
        # <li> DbReadpkg: 当日数据库读请求数 </li>
        # <li> DbWritepkg: 当日数据库写请求数 </li>
        # <li> StaticFsFluxPkgDay: 当日静态托管流量 </li>
        # <li> StaticFsFluxPkg: 当月静态托管流量</li>
        # <li> StaticFsSizePkg: 当月静态托管容量 </li>
        # <li> TkeCpuUsedPkg: 当月容器托管CPU使用量，单位核*秒 </li>
        # <li> TkeCpuUsedPkgDay: 当天容器托管CPU使用量，单位核*秒 </li>
        # <li> TkeMemUsedPkg: 当月容器托管内存使用量，单位MB*秒 </li>
        # <li> TkeMemUsedPkgDay: 当天容器托管内存使用量，单位MB*秒 </li>
        # <li> CodingBuildTimePkgDay: 当天容器托管构建时间使用量，单位毫秒 </li>
        # <li> TkeHttpServiceNatPkgDay: 当天容器托管流量使用量，单位B </li>
        # @type MetricName: String
        # @param ResourceID: 资源ID, 目前仅对云函数、容器托管相关的指标有意义。云函数(FunctionInvocationpkg, FunctionGBspkg, FunctionFluxpkg)、容器托管（服务名称）。如果想查询某个云函数的指标则在ResourceId中传入函数名; 如果只想查询整个namespace的指标, 则留空或不传。
        # @type ResourceID: String

        attr_accessor :EnvId, :MetricName, :ResourceID
        
        def initialize(envid=nil, metricname=nil, resourceid=nil)
          @EnvId = envid
          @MetricName = metricname
          @ResourceID = resourceid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @MetricName = params['MetricName']
          @ResourceID = params['ResourceID']
        end
      end

      # DescribeQuotaData返回参数结构体
      class DescribeQuotaDataResponse < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Value: 指标的值
        # @type Value: Integer
        # @param SubValue: 指标的附加值信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubValue: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricName, :Value, :SubValue, :RequestId
        
        def initialize(metricname=nil, value=nil, subvalue=nil, requestid=nil)
          @MetricName = metricname
          @Value = value
          @SubValue = subvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Value = params['Value']
          @SubValue = params['SubValue']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSmsQuotas请求参数结构体
      class DescribeSmsQuotasRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeSmsQuotas返回参数结构体
      class DescribeSmsQuotasResponse < TencentCloud::Common::AbstractModel
        # @param SmsFreeQuotaList: 短信免费量信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmsFreeQuotaList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SmsFreeQuotaList, :RequestId
        
        def initialize(smsfreequotalist=nil, requestid=nil)
          @SmsFreeQuotaList = smsfreequotalist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SmsFreeQuotaList'].nil?
            @SmsFreeQuotaList = []
            params['SmsFreeQuotaList'].each do |i|
              @SmsFreeQuotaList << SmsFreeQuota.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWxCloudBaseRunEnvs请求参数结构体
      class DescribeWxCloudBaseRunEnvsRequest < TencentCloud::Common::AbstractModel
        # @param WxAppId: wx应用Id
        # @type WxAppId: String

        attr_accessor :WxAppId
        
        def initialize(wxappid=nil)
          @WxAppId = wxappid
        end

        def deserialize(params)
          @WxAppId = params['WxAppId']
        end
      end

      # DescribeWxCloudBaseRunEnvs返回参数结构体
      class DescribeWxCloudBaseRunEnvsResponse < TencentCloud::Common::AbstractModel
        # @param EnvList: env列表
        # @type EnvList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvList, :RequestId
        
        def initialize(envlist=nil, requestid=nil)
          @EnvList = envlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvList'].nil?
            @EnvList = []
            params['EnvList'].each do |i|
              @EnvList << EnvInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWxCloudBaseRunSubNets请求参数结构体
      class DescribeWxCloudBaseRunSubNetsRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC id
        # @type VpcId: String
        # @param Limit: 查询个数限制，不填或小于等于0，等于不限制
        # @type Limit: Integer

        attr_accessor :VpcId, :Limit
        
        def initialize(vpcid=nil, limit=nil)
          @VpcId = vpcid
          @Limit = limit
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @Limit = params['Limit']
        end
      end

      # DescribeWxCloudBaseRunSubNets返回参数结构体
      class DescribeWxCloudBaseRunSubNetsResponse < TencentCloud::Common::AbstractModel
        # @param SubNetIds: 子网Id列表
        # @type SubNetIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubNetIds, :RequestId
        
        def initialize(subnetids=nil, requestid=nil)
          @SubNetIds = subnetids
          @RequestId = requestid
        end

        def deserialize(params)
          @SubNetIds = params['SubNetIds']
          @RequestId = params['RequestId']
        end
      end

      # DestroyEnv请求参数结构体
      class DestroyEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param IsForce: 针对预付费 删除隔离中的环境时要传true 正常环境直接跳过隔离期删除
        # @type IsForce: Boolean
        # @param BypassCheck: 是否绕过资源检查，资源包等额外资源，默认为false，如果为true，则不检查资源是否有数据，直接删除。
        # @type BypassCheck: Boolean

        attr_accessor :EnvId, :IsForce, :BypassCheck
        
        def initialize(envid=nil, isforce=nil, bypasscheck=nil)
          @EnvId = envid
          @IsForce = isforce
          @BypassCheck = bypasscheck
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @IsForce = params['IsForce']
          @BypassCheck = params['BypassCheck']
        end
      end

      # DestroyEnv返回参数结构体
      class DestroyEnvResponse < TencentCloud::Common::AbstractModel
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

      # DestroyStaticStore请求参数结构体
      class DestroyStaticStoreRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CdnDomain: cdn域名
        # @type CdnDomain: String

        attr_accessor :EnvId, :CdnDomain
        
        def initialize(envid=nil, cdndomain=nil)
          @EnvId = envid
          @CdnDomain = cdndomain
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CdnDomain = params['CdnDomain']
        end
      end

      # DestroyStaticStore返回参数结构体
      class DestroyStaticStoreResponse < TencentCloud::Common::AbstractModel
        # @param Result: 条件任务结果(succ/fail)
        # @type Result: String
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

      # 终端用户信息
      class EndUserInfo < TencentCloud::Common::AbstractModel
        # @param UUId: 用户唯一ID
        # @type UUId: String
        # @param WXOpenId: 微信ID
        # @type WXOpenId: String
        # @param QQOpenId: qq ID
        # @type QQOpenId: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param Email: 邮箱
        # @type Email: String
        # @param NickName: 昵称
        # @type NickName: String
        # @param Gender: 性别
        # @type Gender: String
        # @param AvatarUrl: 头像地址
        # @type AvatarUrl: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsAnonymous: 是否为匿名用户
        # @type IsAnonymous: Boolean
        # @param IsDisabled: 是否禁用账户
        # @type IsDisabled: Boolean
        # @param HasPassword: 是否设置过密码
        # @type HasPassword: Boolean
        # @param UserName: 用户名
        # @type UserName: String

        attr_accessor :UUId, :WXOpenId, :QQOpenId, :Phone, :Email, :NickName, :Gender, :AvatarUrl, :UpdateTime, :CreateTime, :IsAnonymous, :IsDisabled, :HasPassword, :UserName
        
        def initialize(uuid=nil, wxopenid=nil, qqopenid=nil, phone=nil, email=nil, nickname=nil, gender=nil, avatarurl=nil, updatetime=nil, createtime=nil, isanonymous=nil, isdisabled=nil, haspassword=nil, username=nil)
          @UUId = uuid
          @WXOpenId = wxopenid
          @QQOpenId = qqopenid
          @Phone = phone
          @Email = email
          @NickName = nickname
          @Gender = gender
          @AvatarUrl = avatarurl
          @UpdateTime = updatetime
          @CreateTime = createtime
          @IsAnonymous = isanonymous
          @IsDisabled = isdisabled
          @HasPassword = haspassword
          @UserName = username
        end

        def deserialize(params)
          @UUId = params['UUId']
          @WXOpenId = params['WXOpenId']
          @QQOpenId = params['QQOpenId']
          @Phone = params['Phone']
          @Email = params['Email']
          @NickName = params['NickName']
          @Gender = params['Gender']
          @AvatarUrl = params['AvatarUrl']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @IsAnonymous = params['IsAnonymous']
          @IsDisabled = params['IsDisabled']
          @HasPassword = params['HasPassword']
          @UserName = params['UserName']
        end
      end

      # 环境计费信息
      class EnvBillingInfoItem < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param PackageId: tcb产品套餐ID，参考DescribePackages接口的返回值。
        # @type PackageId: String
        # @param IsAutoRenew: 自动续费标记
        # @type IsAutoRenew: Boolean
        # @param Status: 状态。包含以下取值：
        # <li> 空字符串：初始化中</li>
        # <li> NORMAL：正常</li>
        # <li> ISOLATE：隔离</li>
        # @type Status: String
        # @param PayMode: 支付方式。包含以下取值：
        # <li> PREPAYMENT：预付费</li>
        # <li> POSTPAID：后付费</li>
        # @type PayMode: String
        # @param IsolatedTime: 隔离时间，最近一次隔离的时间
        # @type IsolatedTime: String
        # @param ExpireTime: 过期时间，套餐即将到期的时间
        # @type ExpireTime: String
        # @param CreateTime: 创建时间，第一次接入计费方案的时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，计费信息最近一次更新的时间。
        # @type UpdateTime: String
        # @param IsAlwaysFree: true表示从未升级过付费版。
        # @type IsAlwaysFree: Boolean
        # @param PaymentChannel: 付费渠道。
        # <li> miniapp：小程序</li>
        # <li> qcloud：腾讯云</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentChannel: String
        # @param OrderInfo: 最新的订单信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderInfo: :class:`Tencentcloud::Tcb.v20180608.models.OrderInfo`
        # @param FreeQuota: 免费配额信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeQuota: String

        attr_accessor :EnvId, :PackageId, :IsAutoRenew, :Status, :PayMode, :IsolatedTime, :ExpireTime, :CreateTime, :UpdateTime, :IsAlwaysFree, :PaymentChannel, :OrderInfo, :FreeQuota
        
        def initialize(envid=nil, packageid=nil, isautorenew=nil, status=nil, paymode=nil, isolatedtime=nil, expiretime=nil, createtime=nil, updatetime=nil, isalwaysfree=nil, paymentchannel=nil, orderinfo=nil, freequota=nil)
          @EnvId = envid
          @PackageId = packageid
          @IsAutoRenew = isautorenew
          @Status = status
          @PayMode = paymode
          @IsolatedTime = isolatedtime
          @ExpireTime = expiretime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsAlwaysFree = isalwaysfree
          @PaymentChannel = paymentchannel
          @OrderInfo = orderinfo
          @FreeQuota = freequota
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @PackageId = params['PackageId']
          @IsAutoRenew = params['IsAutoRenew']
          @Status = params['Status']
          @PayMode = params['PayMode']
          @IsolatedTime = params['IsolatedTime']
          @ExpireTime = params['ExpireTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsAlwaysFree = params['IsAlwaysFree']
          @PaymentChannel = params['PaymentChannel']
          unless params['OrderInfo'].nil?
            @OrderInfo = OrderInfo.new.deserialize(params['OrderInfo'])
          end
          @FreeQuota = params['FreeQuota']
        end
      end

      # 环境信息
      class EnvInfo < TencentCloud::Common::AbstractModel
        # @param EnvId: 账户下该环境唯一标识
        # @type EnvId: String
        # @param Source: 环境来源。包含以下取值：
        # <li>miniapp：微信小程序</li>
        # <li>qcloud ：腾讯云</li>
        # @type Source: String
        # @param Alias: 环境别名，要以a-z开头，不能包含 a-zA-z0-9- 以外的字符
        # @type Alias: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间
        # @type UpdateTime: String
        # @param Status: 环境状态。包含以下取值：
        # <li>NORMAL：正常可用</li>
        # <li>UNAVAILABLE：服务不可用，可能是尚未初始化或者初始化过程中</li>
        # @type Status: String
        # @param Databases: 数据库列表
        # @type Databases: Array
        # @param Storages: 存储列表
        # @type Storages: Array
        # @param Functions: 函数列表
        # @type Functions: Array
        # @param PackageId: tcb产品套餐ID，参考DescribePackages接口的返回值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param PackageName: 套餐中文名称，参考DescribePackages接口的返回值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param LogServices: 云日志服务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogServices: Array
        # @param StaticStorages: 静态资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaticStorages: Array
        # @param IsAutoDegrade: 是否到期自动降为免费版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAutoDegrade: Boolean
        # @param EnvChannel: 环境渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvChannel: String
        # @param PayMode: 支付方式。包含以下取值：
        # <li> prepayment：预付费</li>
        # <li> postpaid：后付费</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param IsDefault: 是否为默认环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Boolean
        # @param Region: 环境所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :EnvId, :Source, :Alias, :CreateTime, :UpdateTime, :Status, :Databases, :Storages, :Functions, :PackageId, :PackageName, :LogServices, :StaticStorages, :IsAutoDegrade, :EnvChannel, :PayMode, :IsDefault, :Region
        
        def initialize(envid=nil, source=nil, _alias=nil, createtime=nil, updatetime=nil, status=nil, databases=nil, storages=nil, functions=nil, packageid=nil, packagename=nil, logservices=nil, staticstorages=nil, isautodegrade=nil, envchannel=nil, paymode=nil, isdefault=nil, region=nil)
          @EnvId = envid
          @Source = source
          @Alias = _alias
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @Databases = databases
          @Storages = storages
          @Functions = functions
          @PackageId = packageid
          @PackageName = packagename
          @LogServices = logservices
          @StaticStorages = staticstorages
          @IsAutoDegrade = isautodegrade
          @EnvChannel = envchannel
          @PayMode = paymode
          @IsDefault = isdefault
          @Region = region
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Source = params['Source']
          @Alias = params['Alias']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              @Databases << DatabasesInfo.new.deserialize(i)
            end
          end
          unless params['Storages'].nil?
            @Storages = []
            params['Storages'].each do |i|
              @Storages << StorageInfo.new.deserialize(i)
            end
          end
          unless params['Functions'].nil?
            @Functions = []
            params['Functions'].each do |i|
              @Functions << FunctionInfo.new.deserialize(i)
            end
          end
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          unless params['LogServices'].nil?
            @LogServices = []
            params['LogServices'].each do |i|
              @LogServices << LogServiceInfo.new.deserialize(i)
            end
          end
          unless params['StaticStorages'].nil?
            @StaticStorages = []
            params['StaticStorages'].each do |i|
              @StaticStorages << StaticStorageInfo.new.deserialize(i)
            end
          end
          @IsAutoDegrade = params['IsAutoDegrade']
          @EnvChannel = params['EnvChannel']
          @PayMode = params['PayMode']
          @IsDefault = params['IsDefault']
          @Region = params['Region']
        end
      end

      # EstablishCloudBaseRunServer请求参数结构体
      class EstablishCloudBaseRunServerRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param ServiceName: 服务名称
        # @type ServiceName: String
        # @param IsPublic: 是否开通外网访问
        # @type IsPublic: Boolean
        # @param ImageRepo: 镜像仓库
        # @type ImageRepo: String
        # @param Remark: 服务描述
        # @type Remark: String
        # @param EsInfo: es信息
        # @type EsInfo: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseEsInfo`
        # @param LogType: 日志类型; es/cls
        # @type LogType: String
        # @param OperatorRemark: 操作备注
        # @type OperatorRemark: String
        # @param Source: 来源方（默认值：qcloud，微信侧来源miniapp)
        # @type Source: String
        # @param VpcInfo: vpc信息
        # @type VpcInfo: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseRunVpcInfo`
        # @param PublicAccess: 0/1=允许公网访问;2=关闭公网访问
        # @type PublicAccess: Integer

        attr_accessor :EnvId, :ServiceName, :IsPublic, :ImageRepo, :Remark, :EsInfo, :LogType, :OperatorRemark, :Source, :VpcInfo, :PublicAccess
        
        def initialize(envid=nil, servicename=nil, ispublic=nil, imagerepo=nil, remark=nil, esinfo=nil, logtype=nil, operatorremark=nil, source=nil, vpcinfo=nil, publicaccess=nil)
          @EnvId = envid
          @ServiceName = servicename
          @IsPublic = ispublic
          @ImageRepo = imagerepo
          @Remark = remark
          @EsInfo = esinfo
          @LogType = logtype
          @OperatorRemark = operatorremark
          @Source = source
          @VpcInfo = vpcinfo
          @PublicAccess = publicaccess
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServiceName = params['ServiceName']
          @IsPublic = params['IsPublic']
          @ImageRepo = params['ImageRepo']
          @Remark = params['Remark']
          unless params['EsInfo'].nil?
            @EsInfo = CloudBaseEsInfo.new.deserialize(params['EsInfo'])
          end
          @LogType = params['LogType']
          @OperatorRemark = params['OperatorRemark']
          @Source = params['Source']
          unless params['VpcInfo'].nil?
            @VpcInfo = CloudBaseRunVpcInfo.new.deserialize(params['VpcInfo'])
          end
          @PublicAccess = params['PublicAccess']
        end
      end

      # EstablishCloudBaseRunServer返回参数结构体
      class EstablishCloudBaseRunServerResponse < TencentCloud::Common::AbstractModel
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

      # EstablishWxGatewayRoute请求参数结构体
      class EstablishWxGatewayRouteRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关id
        # @type GatewayId: String
        # @param GatewayRouteName: 服务名称
        # @type GatewayRouteName: String
        # @param GatewayRouteAddr: 服务地址
        # @type GatewayRouteAddr: String
        # @param GatewayRouteProtocol: 协议类型 http/https
        # @type GatewayRouteProtocol: String
        # @param GatewayRouteDesc: 服务描述
        # @type GatewayRouteDesc: String

        attr_accessor :GatewayId, :GatewayRouteName, :GatewayRouteAddr, :GatewayRouteProtocol, :GatewayRouteDesc
        
        def initialize(gatewayid=nil, gatewayroutename=nil, gatewayrouteaddr=nil, gatewayrouteprotocol=nil, gatewayroutedesc=nil)
          @GatewayId = gatewayid
          @GatewayRouteName = gatewayroutename
          @GatewayRouteAddr = gatewayrouteaddr
          @GatewayRouteProtocol = gatewayrouteprotocol
          @GatewayRouteDesc = gatewayroutedesc
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GatewayRouteName = params['GatewayRouteName']
          @GatewayRouteAddr = params['GatewayRouteAddr']
          @GatewayRouteProtocol = params['GatewayRouteProtocol']
          @GatewayRouteDesc = params['GatewayRouteDesc']
        end
      end

      # EstablishWxGatewayRoute返回参数结构体
      class EstablishWxGatewayRouteResponse < TencentCloud::Common::AbstractModel
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

      # 扩展文件
      class ExtensionFile < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型。枚举值
        # <li>FUNCTION：函数代码</li>
        # <li>STATIC：静态托管代码</li>
        # <li>SMS：短信文件</li>
        # @type FileType: String
        # @param FileName: 文件名，长度不超过24
        # @type FileName: String

        attr_accessor :FileType, :FileName
        
        def initialize(filetype=nil, filename=nil)
          @FileType = filetype
          @FileName = filename
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileName = params['FileName']
        end
      end

      # 扩展文件信息
      class ExtensionFileInfo < TencentCloud::Common::AbstractModel
        # @param CodeUri: 模板里使用的地址
        # @type CodeUri: String
        # @param UploadUrl: 上传文件的临时地址，含签名
        # @type UploadUrl: String
        # @param CustomKey: 自定义密钥。如果为空，则表示不需要加密
        # @type CustomKey: String
        # @param MaxSize: 文件大小限制，单位M，客户端上传前需要主动检查文件大小，超过限制的文件会被删除。
        # @type MaxSize: Integer

        attr_accessor :CodeUri, :UploadUrl, :CustomKey, :MaxSize
        
        def initialize(codeuri=nil, uploadurl=nil, customkey=nil, maxsize=nil)
          @CodeUri = codeuri
          @UploadUrl = uploadurl
          @CustomKey = customkey
          @MaxSize = maxsize
        end

        def deserialize(params)
          @CodeUri = params['CodeUri']
          @UploadUrl = params['UploadUrl']
          @CustomKey = params['CustomKey']
          @MaxSize = params['MaxSize']
        end
      end

      # 后付费资源免费量信息
      class FreequotaInfo < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # <li>COS</li>
        # <li>CDN</li>
        # <li>FLEXDB</li>
        # <li>SCF</li>
        # @type ResourceType: String
        # @param ResourceMetric: 资源指标名称
        # @type ResourceMetric: String
        # @param FreeQuota: 资源指标免费量
        # @type FreeQuota: Integer
        # @param MetricUnit: 指标单位
        # @type MetricUnit: String
        # @param DeductType: 免费量抵扣周期
        # <li>sum-month:以月为单位抵扣</li>
        # <li>sum-day:以天为单位抵扣</li>
        # <li>totalize:总容量抵扣</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductType: String
        # @param FreeQuotaType: 免费量类型
        # <li>basic:通用量抵扣</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeQuotaType: String

        attr_accessor :ResourceType, :ResourceMetric, :FreeQuota, :MetricUnit, :DeductType, :FreeQuotaType
        
        def initialize(resourcetype=nil, resourcemetric=nil, freequota=nil, metricunit=nil, deducttype=nil, freequotatype=nil)
          @ResourceType = resourcetype
          @ResourceMetric = resourcemetric
          @FreeQuota = freequota
          @MetricUnit = metricunit
          @DeductType = deducttype
          @FreeQuotaType = freequotatype
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceMetric = params['ResourceMetric']
          @FreeQuota = params['FreeQuota']
          @MetricUnit = params['MetricUnit']
          @DeductType = params['DeductType']
          @FreeQuotaType = params['FreeQuotaType']
        end
      end

      # 函数的信息
      class FunctionInfo < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Region: 所属地域。
        # 当前支持ap-shanghai
        # @type Region: String

        attr_accessor :Namespace, :Region
        
        def initialize(namespace=nil, region=nil)
          @Namespace = namespace
          @Region = region
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Region = params['Region']
        end
      end

      # 键值对
      class KVPair < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 云日志服务相关信息
      class LogServiceInfo < TencentCloud::Common::AbstractModel
        # @param LogsetName: log名
        # @type LogsetName: String
        # @param LogsetId: log-id
        # @type LogsetId: String
        # @param TopicName: topic名
        # @type TopicName: String
        # @param TopicId: topic-id
        # @type TopicId: String
        # @param Region: cls日志所属地域
        # @type Region: String

        attr_accessor :LogsetName, :LogsetId, :TopicName, :TopicId, :Region
        
        def initialize(logsetname=nil, logsetid=nil, topicname=nil, topicid=nil, region=nil)
          @LogsetName = logsetname
          @LogsetId = logsetid
          @TopicName = topicname
          @TopicId = topicid
          @Region = region
        end

        def deserialize(params)
          @LogsetName = params['LogsetName']
          @LogsetId = params['LogsetId']
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @Region = params['Region']
        end
      end

      # 终端用户登录新增统计
      class LoginStatistic < TencentCloud::Common::AbstractModel
        # @param StatisticalType: 统计类型 新增NEWUSER 和登录 LOGIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticalType: String
        # @param StatisticalCycle: 统计周期：日DAY，周WEEK，月MONTH
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticalCycle: String
        # @param Count: 统计总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :StatisticalType, :StatisticalCycle, :Count, :UpdateTime
        
        def initialize(statisticaltype=nil, statisticalcycle=nil, count=nil, updatetime=nil)
          @StatisticalType = statisticaltype
          @StatisticalCycle = statisticalcycle
          @Count = count
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @StatisticalType = params['StatisticalType']
          @StatisticalCycle = params['StatisticalCycle']
          @Count = params['Count']
          @UpdateTime = params['UpdateTime']
        end
      end

      # ModifyDatabaseACL请求参数结构体
      class ModifyDatabaseACLRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionName: 集合名称
        # @type CollectionName: String
        # @param AclTag: 权限标签。包含以下取值：
        # <li> READONLY：所有用户可读，仅创建者和管理员可写</li>
        # <li> PRIVATE：仅创建者及管理员可读写</li>
        # <li> ADMINWRITE：所有用户可读，仅管理员可写</li>
        # <li> ADMINONLY：仅管理员可读写</li>
        # @type AclTag: String

        attr_accessor :EnvId, :CollectionName, :AclTag
        
        def initialize(envid=nil, collectionname=nil, acltag=nil)
          @EnvId = envid
          @CollectionName = collectionname
          @AclTag = acltag
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionName = params['CollectionName']
          @AclTag = params['AclTag']
        end
      end

      # ModifyDatabaseACL返回参数结构体
      class ModifyDatabaseACLResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEndUser请求参数结构体
      class ModifyEndUserRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param UUId: C端用户端的唯一ID
        # @type UUId: String
        # @param Status: 帐号的状态
        # <li>ENABLE</li>
        # <li>DISABLE</li>
        # @type Status: String

        attr_accessor :EnvId, :UUId, :Status
        
        def initialize(envid=nil, uuid=nil, status=nil)
          @EnvId = envid
          @UUId = uuid
          @Status = status
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @UUId = params['UUId']
          @Status = params['Status']
        end
      end

      # ModifyEndUser返回参数结构体
      class ModifyEndUserResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEnv请求参数结构体
      class ModifyEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Alias: 环境备注名，要以a-z开头，不能包含 a-zA-z0-9- 以外的字符
        # @type Alias: String

        attr_accessor :EnvId, :Alias
        
        def initialize(envid=nil, _alias=nil)
          @EnvId = envid
          @Alias = _alias
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Alias = params['Alias']
        end
      end

      # ModifyEnv返回参数结构体
      class ModifyEnvResponse < TencentCloud::Common::AbstractModel
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

      # 订单信息
      class OrderInfo < TencentCloud::Common::AbstractModel
        # @param TranId: 订单号
        # @type TranId: String
        # @param PackageId: 订单要切换的套餐ID
        # @type PackageId: String
        # @param TranType: 订单类型
        # <li>1 购买</li>
        # <li>2 续费</li>
        # <li>3 变配</li>
        # @type TranType: String
        # @param TranStatus: 订单状态。
        # <li>1未支付</li>
        # <li>2 支付中</li>
        # <li>3 发货中</li>
        # <li>4 发货成功</li>
        # <li>5 发货失败</li>
        # <li>6 已退款</li>
        # <li>7 已取消</li>
        # <li>100 已删除</li>
        # @type TranStatus: String
        # @param UpdateTime: 订单更新时间
        # @type UpdateTime: String
        # @param CreateTime: 订单创建时间
        # @type CreateTime: String
        # @param PayMode: 付费模式.
        # <li>prepayment 预付费</li>
        # <li>postpaid 后付费</li>
        # @type PayMode: String
        # @param ExtensionId: 订单绑定的扩展ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtensionId: String
        # @param ResourceReady: 资源初始化结果(仅当ExtensionId不为空时有效): successful(初始化成功), failed(初始化失败), doing(初始化进行中), init(准备初始化)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceReady: String

        attr_accessor :TranId, :PackageId, :TranType, :TranStatus, :UpdateTime, :CreateTime, :PayMode, :ExtensionId, :ResourceReady
        
        def initialize(tranid=nil, packageid=nil, trantype=nil, transtatus=nil, updatetime=nil, createtime=nil, paymode=nil, extensionid=nil, resourceready=nil)
          @TranId = tranid
          @PackageId = packageid
          @TranType = trantype
          @TranStatus = transtatus
          @UpdateTime = updatetime
          @CreateTime = createtime
          @PayMode = paymode
          @ExtensionId = extensionid
          @ResourceReady = resourceready
        end

        def deserialize(params)
          @TranId = params['TranId']
          @PackageId = params['PackageId']
          @TranType = params['TranType']
          @TranStatus = params['TranStatus']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @ExtensionId = params['ExtensionId']
          @ResourceReady = params['ResourceReady']
        end
      end

      # 后付费免费额度
      class PackageFreeQuotaInfo < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # <li>COS</li>
        # <li>CDN</li>
        # <li>FLEXDB</li>
        # <li>SCF</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ResourceMetric: 资源指标名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceMetric: String
        # @param FreeQuota: 资源指标免费量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeQuota: Integer
        # @param MetricUnit: 指标单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricUnit: String
        # @param DeductType: 免费量抵扣周期
        # <li>sum-month:以月为单位抵扣</li>
        # <li>sum-day:以天为单位抵扣</li>
        # <li>totalize:总容量抵扣</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductType: String
        # @param FreeQuotaType: 免费量类型
        # <li>basic:通用量抵扣</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeQuotaType: String

        attr_accessor :ResourceType, :ResourceMetric, :FreeQuota, :MetricUnit, :DeductType, :FreeQuotaType
        
        def initialize(resourcetype=nil, resourcemetric=nil, freequota=nil, metricunit=nil, deducttype=nil, freequotatype=nil)
          @ResourceType = resourcetype
          @ResourceMetric = resourcemetric
          @FreeQuota = freequota
          @MetricUnit = metricunit
          @DeductType = deducttype
          @FreeQuotaType = freequotatype
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceMetric = params['ResourceMetric']
          @FreeQuota = params['FreeQuota']
          @MetricUnit = params['MetricUnit']
          @DeductType = params['DeductType']
          @FreeQuotaType = params['FreeQuotaType']
        end
      end

      # 终端用户平台统计信息
      class PlatformStatistic < TencentCloud::Common::AbstractModel
        # @param Platform: 终端用户从属平台
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Platform: String
        # @param Count: 平台终端用户数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Platform, :Count, :UpdateTime
        
        def initialize(platform=nil, count=nil, updatetime=nil)
          @Platform = platform
          @Count = count
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Count = params['Count']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 按量付费免费配额信息
      class PostpayEnvQuota < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Value: 配额值
        # @type Value: Integer
        # @param StartTime: 配额生效时间
        # 为空表示没有时间限制
        # @type StartTime: String
        # @param EndTime: 配额失效时间
        # 为空表示没有时间限制
        # @type EndTime: String

        attr_accessor :ResourceType, :MetricName, :Value, :StartTime, :EndTime
        
        def initialize(resourcetype=nil, metricname=nil, value=nil, starttime=nil, endtime=nil)
          @ResourceType = resourcetype
          @MetricName = metricname
          @Value = value
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @MetricName = params['MetricName']
          @Value = params['Value']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ReinstateEnv请求参数结构体
      class ReinstateEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # ReinstateEnv返回参数结构体
      class ReinstateEnvResponse < TencentCloud::Common::AbstractModel
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

      # RollUpdateCloudBaseRunServerVersion请求参数结构体
      class RollUpdateCloudBaseRunServerVersionRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param VersionName: 要替换的版本名称，可以为latest
        # @type VersionName: String
        # @param UploadType: 枚举（package/repository/image)
        # @type UploadType: String
        # @param RepositoryType: repository的类型(coding/gitlab/github)
        # @type RepositoryType: String
        # @param FlowRatio: 流量占比
        # @type FlowRatio: Integer
        # @param DockerfilePath: dockerfile地址
        # @type DockerfilePath: String
        # @param BuildDir: 构建目录
        # @type BuildDir: String
        # @param Cpu: Cpu的大小，单位：核
        # @type Cpu: String
        # @param Mem: Mem的大小，单位：G
        # @type Mem: String
        # @param MinNum: 最小副本数，最小值：0
        # @type MinNum: String
        # @param MaxNum: 最大副本数
        # @type MaxNum: String
        # @param PolicyType: 策略类型
        # @type PolicyType: String
        # @param PolicyThreshold: 策略阈值
        # @type PolicyThreshold: String
        # @param EnvParams: 环境变量
        # @type EnvParams: String
        # @param ContainerPort: 容器端口
        # @type ContainerPort: Integer
        # @param ServerName: 服务名称
        # @type ServerName: String
        # @param Repository: repository地址
        # @type Repository: String
        # @param Branch: 分支
        # @type Branch: String
        # @param VersionRemark: 版本备注
        # @type VersionRemark: String
        # @param PackageName: 代码包名字
        # @type PackageName: String
        # @param PackageVersion: 代码包版本
        # @type PackageVersion: String
        # @param ImageInfo: Image的详情
        # @type ImageInfo: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseRunImageInfo`
        # @param CodeDetail: Github等拉取代码的详情
        # @type CodeDetail: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseCodeRepoDetail`
        # @param IsRebuild: 是否回放流量
        # @type IsRebuild: Boolean
        # @param InitialDelaySeconds: 延迟多长时间开始健康检查（单位s）
        # @type InitialDelaySeconds: Integer
        # @param MountVolumeInfo: cfs挂载信息
        # @type MountVolumeInfo: Array
        # @param Rollback: 是否回滚
        # @type Rollback: Boolean
        # @param SnapshotName: 版本历史名
        # @type SnapshotName: String
        # @param CustomLogs: 自定义采集路径
        # @type CustomLogs: String
        # @param EnableUnion: 是否启用统一域名
        # @type EnableUnion: Boolean
        # @param OperatorRemark: 操作备注
        # @type OperatorRemark: String
        # @param ServerPath: 服务路径（只会第一次生效）
        # @type ServerPath: String

        attr_accessor :EnvId, :VersionName, :UploadType, :RepositoryType, :FlowRatio, :DockerfilePath, :BuildDir, :Cpu, :Mem, :MinNum, :MaxNum, :PolicyType, :PolicyThreshold, :EnvParams, :ContainerPort, :ServerName, :Repository, :Branch, :VersionRemark, :PackageName, :PackageVersion, :ImageInfo, :CodeDetail, :IsRebuild, :InitialDelaySeconds, :MountVolumeInfo, :Rollback, :SnapshotName, :CustomLogs, :EnableUnion, :OperatorRemark, :ServerPath
        
        def initialize(envid=nil, versionname=nil, uploadtype=nil, repositorytype=nil, flowratio=nil, dockerfilepath=nil, builddir=nil, cpu=nil, mem=nil, minnum=nil, maxnum=nil, policytype=nil, policythreshold=nil, envparams=nil, containerport=nil, servername=nil, repository=nil, branch=nil, versionremark=nil, packagename=nil, packageversion=nil, imageinfo=nil, codedetail=nil, isrebuild=nil, initialdelayseconds=nil, mountvolumeinfo=nil, rollback=nil, snapshotname=nil, customlogs=nil, enableunion=nil, operatorremark=nil, serverpath=nil)
          @EnvId = envid
          @VersionName = versionname
          @UploadType = uploadtype
          @RepositoryType = repositorytype
          @FlowRatio = flowratio
          @DockerfilePath = dockerfilepath
          @BuildDir = builddir
          @Cpu = cpu
          @Mem = mem
          @MinNum = minnum
          @MaxNum = maxnum
          @PolicyType = policytype
          @PolicyThreshold = policythreshold
          @EnvParams = envparams
          @ContainerPort = containerport
          @ServerName = servername
          @Repository = repository
          @Branch = branch
          @VersionRemark = versionremark
          @PackageName = packagename
          @PackageVersion = packageversion
          @ImageInfo = imageinfo
          @CodeDetail = codedetail
          @IsRebuild = isrebuild
          @InitialDelaySeconds = initialdelayseconds
          @MountVolumeInfo = mountvolumeinfo
          @Rollback = rollback
          @SnapshotName = snapshotname
          @CustomLogs = customlogs
          @EnableUnion = enableunion
          @OperatorRemark = operatorremark
          @ServerPath = serverpath
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @VersionName = params['VersionName']
          @UploadType = params['UploadType']
          @RepositoryType = params['RepositoryType']
          @FlowRatio = params['FlowRatio']
          @DockerfilePath = params['DockerfilePath']
          @BuildDir = params['BuildDir']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @MinNum = params['MinNum']
          @MaxNum = params['MaxNum']
          @PolicyType = params['PolicyType']
          @PolicyThreshold = params['PolicyThreshold']
          @EnvParams = params['EnvParams']
          @ContainerPort = params['ContainerPort']
          @ServerName = params['ServerName']
          @Repository = params['Repository']
          @Branch = params['Branch']
          @VersionRemark = params['VersionRemark']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          unless params['ImageInfo'].nil?
            @ImageInfo = CloudBaseRunImageInfo.new.deserialize(params['ImageInfo'])
          end
          unless params['CodeDetail'].nil?
            @CodeDetail = CloudBaseCodeRepoDetail.new.deserialize(params['CodeDetail'])
          end
          @IsRebuild = params['IsRebuild']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          unless params['MountVolumeInfo'].nil?
            @MountVolumeInfo = []
            params['MountVolumeInfo'].each do |i|
              @MountVolumeInfo << CloudBaseRunVolumeMount.new.deserialize(i)
            end
          end
          @Rollback = params['Rollback']
          @SnapshotName = params['SnapshotName']
          @CustomLogs = params['CustomLogs']
          @EnableUnion = params['EnableUnion']
          @OperatorRemark = params['OperatorRemark']
          @ServerPath = params['ServerPath']
        end
      end

      # RollUpdateCloudBaseRunServerVersion返回参数结构体
      class RollUpdateCloudBaseRunServerVersionResponse < TencentCloud::Common::AbstractModel
        # @param Result: succ为成功
        # @type Result: String
        # @param VersionName: 滚动更新的VersionName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param RunId: 操作记录id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :VersionName, :RunId, :RequestId
        
        def initialize(result=nil, versionname=nil, runid=nil, requestid=nil)
          @Result = result
          @VersionName = versionname
          @RunId = runid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @VersionName = params['VersionName']
          @RunId = params['RunId']
          @RequestId = params['RequestId']
        end
      end

      # 短信免费量
      class SmsFreeQuota < TencentCloud::Common::AbstractModel
        # @param FreeQuota: 免费量总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeQuota: Integer
        # @param TotalUsedQuota: 共计已使用总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUsedQuota: Integer
        # @param CycleStart: 免费周期起点，0000-00-00 00:00:00 形式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleStart: String
        # @param CycleEnd: 免费周期终点，0000-00-00 00:00:00 形式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleEnd: String
        # @param TodayUsedQuota: 今天已使用总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TodayUsedQuota: Integer

        attr_accessor :FreeQuota, :TotalUsedQuota, :CycleStart, :CycleEnd, :TodayUsedQuota
        
        def initialize(freequota=nil, totalusedquota=nil, cyclestart=nil, cycleend=nil, todayusedquota=nil)
          @FreeQuota = freequota
          @TotalUsedQuota = totalusedquota
          @CycleStart = cyclestart
          @CycleEnd = cycleend
          @TodayUsedQuota = todayusedquota
        end

        def deserialize(params)
          @FreeQuota = params['FreeQuota']
          @TotalUsedQuota = params['TotalUsedQuota']
          @CycleStart = params['CycleStart']
          @CycleEnd = params['CycleEnd']
          @TodayUsedQuota = params['TodayUsedQuota']
        end
      end

      # 静态CDN资源信息
      class StaticStorageInfo < TencentCloud::Common::AbstractModel
        # @param StaticDomain: 静态CDN域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaticDomain: String
        # @param DefaultDirName: 静态CDN默认文件夹，当前为根目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultDirName: String
        # @param Status: 资源状态(process/online/offline/init)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Region: cos所属区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Bucket: bucket信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String

        attr_accessor :StaticDomain, :DefaultDirName, :Status, :Region, :Bucket
        
        def initialize(staticdomain=nil, defaultdirname=nil, status=nil, region=nil, bucket=nil)
          @StaticDomain = staticdomain
          @DefaultDirName = defaultdirname
          @Status = status
          @Region = region
          @Bucket = bucket
        end

        def deserialize(params)
          @StaticDomain = params['StaticDomain']
          @DefaultDirName = params['DefaultDirName']
          @Status = params['Status']
          @Region = params['Region']
          @Bucket = params['Bucket']
        end
      end

      # StorageInfo 资源信息
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param Region: 资源所属地域。
        # 当前支持ap-shanghai
        # @type Region: String
        # @param Bucket: 桶名，存储资源的唯一标识
        # @type Bucket: String
        # @param CdnDomain: cdn 域名
        # @type CdnDomain: String
        # @param AppId: 资源所属用户的腾讯云appId
        # @type AppId: String

        attr_accessor :Region, :Bucket, :CdnDomain, :AppId
        
        def initialize(region=nil, bucket=nil, cdndomain=nil, appid=nil)
          @Region = region
          @Bucket = bucket
          @CdnDomain = cdndomain
          @AppId = appid
        end

        def deserialize(params)
          @Region = params['Region']
          @Bucket = params['Bucket']
          @CdnDomain = params['CdnDomain']
          @AppId = params['AppId']
        end
      end

    end
  end
end

