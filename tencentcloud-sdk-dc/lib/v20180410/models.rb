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
  module Dc
    module V20180410
      # AcceptDirectConnectTunnel请求参数结构体
      class AcceptDirectConnectTunnelRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 物理专线拥有者接受共享专用通道申请
        # @type DirectConnectTunnelId: String

        attr_accessor :DirectConnectTunnelId
        
        def initialize(directconnecttunnelid=nil)
          @DirectConnectTunnelId = directconnecttunnelid
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
        end
      end

      # AcceptDirectConnectTunnel返回参数结构体
      class AcceptDirectConnectTunnelResponse < TencentCloud::Common::AbstractModel
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

      # 接入点信息。
      class AccessPoint < TencentCloud::Common::AbstractModel
        # @param AccessPointName: 接入点的名称。
        # @type AccessPointName: String
        # @param AccessPointId: 接入点唯一ID。
        # @type AccessPointId: String
        # @param State: 接入点的状态。可用，不可用。
        # @type State: String
        # @param Location: 接入点的位置。
        # @type Location: String
        # @param LineOperator: 接入点支持的运营商列表。
        # @type LineOperator: Array
        # @param RegionId: 接入点管理的大区ID。
        # @type RegionId: String
        # @param AvailablePortType: 接入点可用的端口类型列表。1000BASE-T代表千兆电口，1000BASE-LX代表千兆单模光口10km，1000BASE-ZX代表千兆单模光口80km,10GBASE-LR代表万兆单模光口10km,10GBASE-ZR代表万兆单模光口80km,10GBASE-LH代表万兆单模光口40km,100GBASE-LR4代表100G单模光口10km
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailablePortType: Array
        # @param Coordinate: 接入点经纬度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coordinate: :class:`Tencentcloud::Dc.v20180410.models.Coordinate`
        # @param City: 接入点所在城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param Area: 接入点地域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String

        attr_accessor :AccessPointName, :AccessPointId, :State, :Location, :LineOperator, :RegionId, :AvailablePortType, :Coordinate, :City, :Area
        
        def initialize(accesspointname=nil, accesspointid=nil, state=nil, location=nil, lineoperator=nil, regionid=nil, availableporttype=nil, coordinate=nil, city=nil, area=nil)
          @AccessPointName = accesspointname
          @AccessPointId = accesspointid
          @State = state
          @Location = location
          @LineOperator = lineoperator
          @RegionId = regionid
          @AvailablePortType = availableporttype
          @Coordinate = coordinate
          @City = city
          @Area = area
        end

        def deserialize(params)
          @AccessPointName = params['AccessPointName']
          @AccessPointId = params['AccessPointId']
          @State = params['State']
          @Location = params['Location']
          @LineOperator = params['LineOperator']
          @RegionId = params['RegionId']
          @AvailablePortType = params['AvailablePortType']
          unless params['Coordinate'].nil?
            @Coordinate = Coordinate.new.deserialize(params['Coordinate'])
          end
          @City = params['City']
          @Area = params['Area']
        end
      end

      # ApplyInternetAddress请求参数结构体
      class ApplyInternetAddressRequest < TencentCloud::Common::AbstractModel
        # @param MaskLen: CIDR地址掩码长度
        # @type MaskLen: Integer
        # @param AddrType: 0:BGP类型地址
        # 1：中国电信
        # 2：中国移动
        # 3：中国联通
        # @type AddrType: Integer
        # @param AddrProto: 0：IPv4
        # 1:IPv6
        # @type AddrProto: Integer

        attr_accessor :MaskLen, :AddrType, :AddrProto
        
        def initialize(masklen=nil, addrtype=nil, addrproto=nil)
          @MaskLen = masklen
          @AddrType = addrtype
          @AddrProto = addrproto
        end

        def deserialize(params)
          @MaskLen = params['MaskLen']
          @AddrType = params['AddrType']
          @AddrProto = params['AddrProto']
        end
      end

      # ApplyInternetAddress返回参数结构体
      class ApplyInternetAddressResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 互联网公网地址ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId
        
        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # BFD配置信息
      class BFDInfo < TencentCloud::Common::AbstractModel
        # @param ProbeFailedTimes: 健康检查次数
        # @type ProbeFailedTimes: Integer
        # @param Interval: 健康检查间隔
        # @type Interval: Integer

        attr_accessor :ProbeFailedTimes, :Interval
        
        def initialize(probefailedtimes=nil, interval=nil)
          @ProbeFailedTimes = probefailedtimes
          @Interval = interval
        end

        def deserialize(params)
          @ProbeFailedTimes = params['ProbeFailedTimes']
          @Interval = params['Interval']
        end
      end

      # bgp状态信息
      class BGPStatus < TencentCloud::Common::AbstractModel
        # @param TencentAddressBgpState: 腾讯侧主互联IP BGP状态
        # @type TencentAddressBgpState: String
        # @param TencentBackupAddressBgpState: 腾讯侧备互联IP BGP状态
        # @type TencentBackupAddressBgpState: String

        attr_accessor :TencentAddressBgpState, :TencentBackupAddressBgpState
        
        def initialize(tencentaddressbgpstate=nil, tencentbackupaddressbgpstate=nil)
          @TencentAddressBgpState = tencentaddressbgpstate
          @TencentBackupAddressBgpState = tencentbackupaddressbgpstate
        end

        def deserialize(params)
          @TencentAddressBgpState = params['TencentAddressBgpState']
          @TencentBackupAddressBgpState = params['TencentBackupAddressBgpState']
        end
      end

      # bgp参数，包括Asn，AuthKey
      class BgpPeer < TencentCloud::Common::AbstractModel
        # @param Asn: 用户侧，BGP Asn
        # @type Asn: Integer
        # @param AuthKey: 用户侧BGP密钥
        # @type AuthKey: String

        attr_accessor :Asn, :AuthKey
        
        def initialize(asn=nil, authkey=nil)
          @Asn = asn
          @AuthKey = authkey
        end

        def deserialize(params)
          @Asn = params['Asn']
          @AuthKey = params['AuthKey']
        end
      end

      # 坐标，经维度描述
      class Coordinate < TencentCloud::Common::AbstractModel
        # @param Lat: 纬度
        # @type Lat: Float
        # @param Lng: 经度
        # @type Lng: Float

        attr_accessor :Lat, :Lng
        
        def initialize(lat=nil, lng=nil)
          @Lat = lat
          @Lng = lng
        end

        def deserialize(params)
          @Lat = params['Lat']
          @Lng = params['Lng']
        end
      end

      # CreateDirectConnect请求参数结构体
      class CreateDirectConnectRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectName: 物理专线的名称。
        # @type DirectConnectName: String
        # @param AccessPointId: 物理专线所在的接入点。
        # 您可以通过调用 DescribeAccessPoints接口获取地域ID。所选择的接入点必须存在且处于可接入的状态。
        # @type AccessPointId: String
        # @param LineOperator: 提供接入物理专线的运营商。ChinaTelecom：中国电信， ChinaMobile：中国移动，ChinaUnicom：中国联通， In-houseWiring：楼内线，ChinaOther：中国其他， InternationalOperator：境外其他。
        # @type LineOperator: String
        # @param PortType: 物理专线接入端口类型,取值：100Base-T：百兆电口,1000Base-T（默认值）：千兆电口,1000Base-LX：千兆单模光口（10千米）,10GBase-T：万兆电口10GBase-LR：万兆单模光口（10千米），默认值，千兆单模光口（10千米）。
        # @type PortType: String
        # @param CircuitCode: 运营商或者服务商为物理专线提供的电路编码。
        # @type CircuitCode: String
        # @param Location: 本地数据中心的地理位置。
        # @type Location: String
        # @param Bandwidth: 物理专线接入接口带宽，单位为Mbps，默认值为1000，取值范围为 [2, 10240]。
        # @type Bandwidth: Integer
        # @param RedundantDirectConnectId: 冗余物理专线的ID。
        # @type RedundantDirectConnectId: String
        # @param Vlan: 物理专线调试VLAN。默认开启VLAN，自动分配VLAN。
        # @type Vlan: Integer
        # @param TencentAddress: 物理专线调试腾讯侧互联 IP。默认自动分配。
        # @type TencentAddress: String
        # @param CustomerAddress: 物理专线调试用户侧互联 IP。默认自动分配。
        # @type CustomerAddress: String
        # @param CustomerName: 物理专线申请者姓名。默认从账户体系获取。
        # @type CustomerName: String
        # @param CustomerContactMail: 物理专线申请者联系邮箱。默认从账户体系获取。
        # @type CustomerContactMail: String
        # @param CustomerContactNumber: 物理专线申请者联系号码。默认从账户体系获取。
        # @type CustomerContactNumber: String
        # @param FaultReportContactPerson: 报障联系人。
        # @type FaultReportContactPerson: String
        # @param FaultReportContactNumber: 报障联系电话。
        # @type FaultReportContactNumber: String
        # @param SignLaw: 物理专线申请者是否签署了用户使用协议。默认已签署
        # @type SignLaw: Boolean

        attr_accessor :DirectConnectName, :AccessPointId, :LineOperator, :PortType, :CircuitCode, :Location, :Bandwidth, :RedundantDirectConnectId, :Vlan, :TencentAddress, :CustomerAddress, :CustomerName, :CustomerContactMail, :CustomerContactNumber, :FaultReportContactPerson, :FaultReportContactNumber, :SignLaw
        
        def initialize(directconnectname=nil, accesspointid=nil, lineoperator=nil, porttype=nil, circuitcode=nil, location=nil, bandwidth=nil, redundantdirectconnectid=nil, vlan=nil, tencentaddress=nil, customeraddress=nil, customername=nil, customercontactmail=nil, customercontactnumber=nil, faultreportcontactperson=nil, faultreportcontactnumber=nil, signlaw=nil)
          @DirectConnectName = directconnectname
          @AccessPointId = accesspointid
          @LineOperator = lineoperator
          @PortType = porttype
          @CircuitCode = circuitcode
          @Location = location
          @Bandwidth = bandwidth
          @RedundantDirectConnectId = redundantdirectconnectid
          @Vlan = vlan
          @TencentAddress = tencentaddress
          @CustomerAddress = customeraddress
          @CustomerName = customername
          @CustomerContactMail = customercontactmail
          @CustomerContactNumber = customercontactnumber
          @FaultReportContactPerson = faultreportcontactperson
          @FaultReportContactNumber = faultreportcontactnumber
          @SignLaw = signlaw
        end

        def deserialize(params)
          @DirectConnectName = params['DirectConnectName']
          @AccessPointId = params['AccessPointId']
          @LineOperator = params['LineOperator']
          @PortType = params['PortType']
          @CircuitCode = params['CircuitCode']
          @Location = params['Location']
          @Bandwidth = params['Bandwidth']
          @RedundantDirectConnectId = params['RedundantDirectConnectId']
          @Vlan = params['Vlan']
          @TencentAddress = params['TencentAddress']
          @CustomerAddress = params['CustomerAddress']
          @CustomerName = params['CustomerName']
          @CustomerContactMail = params['CustomerContactMail']
          @CustomerContactNumber = params['CustomerContactNumber']
          @FaultReportContactPerson = params['FaultReportContactPerson']
          @FaultReportContactNumber = params['FaultReportContactNumber']
          @SignLaw = params['SignLaw']
        end
      end

      # CreateDirectConnect返回参数结构体
      class CreateDirectConnectResponse < TencentCloud::Common::AbstractModel
        # @param DirectConnectIdSet: 物理专线的ID。
        # @type DirectConnectIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DirectConnectIdSet, :RequestId
        
        def initialize(directconnectidset=nil, requestid=nil)
          @DirectConnectIdSet = directconnectidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DirectConnectIdSet = params['DirectConnectIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateDirectConnectTunnel请求参数结构体
      class CreateDirectConnectTunnelRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectId: 专线 ID，例如：dc-kd7d06of
        # @type DirectConnectId: String
        # @param DirectConnectTunnelName: 专用通道名称
        # @type DirectConnectTunnelName: String
        # @param DirectConnectOwnerAccount: 物理专线 owner，缺省为当前客户（物理专线 owner）
        # 共享专线时这里需要填写共享专线的开发商账号 ID
        # @type DirectConnectOwnerAccount: String
        # @param NetworkType: 网络类型，分别为VPC、BMVPC，CCN，默认是VPC
        # VPC：私有网络
        # BMVPC：黑石网络
        # CCN：云联网
        # @type NetworkType: String
        # @param NetworkRegion: 网络地域
        # @type NetworkRegion: String
        # @param VpcId: 私有网络统一 ID 或者黑石网络统一 ID
        # @type VpcId: String
        # @param DirectConnectGatewayId: 专线网关 ID，例如 dcg-d545ddf
        # @type DirectConnectGatewayId: String
        # @param Bandwidth: 专线带宽，单位：Mbps
        # 默认是物理专线带宽值
        # @type Bandwidth: Integer
        # @param RouteType: BGP ：BGP路由
        # STATIC：静态
        # 默认为 BGP 路由
        # @type RouteType: String
        # @param BgpPeer: BgpPeer，用户侧bgp信息，包括Asn和AuthKey
        # @type BgpPeer: :class:`Tencentcloud::Dc.v20180410.models.BgpPeer`
        # @param RouteFilterPrefixes: 静态路由，用户IDC的网段地址
        # @type RouteFilterPrefixes: Array
        # @param Vlan: vlan，范围：0 ~ 3000
        # 0：不开启子接口
        # 默认值是非0
        # @type Vlan: Integer
        # @param TencentAddress: TencentAddress，腾讯侧互联 IP
        # @type TencentAddress: String
        # @param CustomerAddress: CustomerAddress，用户侧互联 IP
        # @type CustomerAddress: String
        # @param TencentBackupAddress: TencentBackupAddress，腾讯侧备用互联 IP
        # @type TencentBackupAddress: String
        # @param CloudAttachId: 高速上云服务ID
        # @type CloudAttachId: String

        attr_accessor :DirectConnectId, :DirectConnectTunnelName, :DirectConnectOwnerAccount, :NetworkType, :NetworkRegion, :VpcId, :DirectConnectGatewayId, :Bandwidth, :RouteType, :BgpPeer, :RouteFilterPrefixes, :Vlan, :TencentAddress, :CustomerAddress, :TencentBackupAddress, :CloudAttachId
        
        def initialize(directconnectid=nil, directconnecttunnelname=nil, directconnectowneraccount=nil, networktype=nil, networkregion=nil, vpcid=nil, directconnectgatewayid=nil, bandwidth=nil, routetype=nil, bgppeer=nil, routefilterprefixes=nil, vlan=nil, tencentaddress=nil, customeraddress=nil, tencentbackupaddress=nil, cloudattachid=nil)
          @DirectConnectId = directconnectid
          @DirectConnectTunnelName = directconnecttunnelname
          @DirectConnectOwnerAccount = directconnectowneraccount
          @NetworkType = networktype
          @NetworkRegion = networkregion
          @VpcId = vpcid
          @DirectConnectGatewayId = directconnectgatewayid
          @Bandwidth = bandwidth
          @RouteType = routetype
          @BgpPeer = bgppeer
          @RouteFilterPrefixes = routefilterprefixes
          @Vlan = vlan
          @TencentAddress = tencentaddress
          @CustomerAddress = customeraddress
          @TencentBackupAddress = tencentbackupaddress
          @CloudAttachId = cloudattachid
        end

        def deserialize(params)
          @DirectConnectId = params['DirectConnectId']
          @DirectConnectTunnelName = params['DirectConnectTunnelName']
          @DirectConnectOwnerAccount = params['DirectConnectOwnerAccount']
          @NetworkType = params['NetworkType']
          @NetworkRegion = params['NetworkRegion']
          @VpcId = params['VpcId']
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @Bandwidth = params['Bandwidth']
          @RouteType = params['RouteType']
          unless params['BgpPeer'].nil?
            @BgpPeer = BgpPeer.new.deserialize(params['BgpPeer'])
          end
          unless params['RouteFilterPrefixes'].nil?
            @RouteFilterPrefixes = []
            params['RouteFilterPrefixes'].each do |i|
              @RouteFilterPrefixes << RouteFilterPrefix.new.deserialize(i)
            end
          end
          @Vlan = params['Vlan']
          @TencentAddress = params['TencentAddress']
          @CustomerAddress = params['CustomerAddress']
          @TencentBackupAddress = params['TencentBackupAddress']
          @CloudAttachId = params['CloudAttachId']
        end
      end

      # CreateDirectConnectTunnel返回参数结构体
      class CreateDirectConnectTunnelResponse < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelIdSet: 专用通道ID
        # @type DirectConnectTunnelIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DirectConnectTunnelIdSet, :RequestId
        
        def initialize(directconnecttunnelidset=nil, requestid=nil)
          @DirectConnectTunnelIdSet = directconnecttunnelidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DirectConnectTunnelIdSet = params['DirectConnectTunnelIdSet']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDirectConnect请求参数结构体
      class DeleteDirectConnectRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectId: 物理专线的ID。
        # @type DirectConnectId: String

        attr_accessor :DirectConnectId
        
        def initialize(directconnectid=nil)
          @DirectConnectId = directconnectid
        end

        def deserialize(params)
          @DirectConnectId = params['DirectConnectId']
        end
      end

      # DeleteDirectConnect返回参数结构体
      class DeleteDirectConnectResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDirectConnectTunnel请求参数结构体
      class DeleteDirectConnectTunnelRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 专用通道ID
        # @type DirectConnectTunnelId: String

        attr_accessor :DirectConnectTunnelId
        
        def initialize(directconnecttunnelid=nil)
          @DirectConnectTunnelId = directconnecttunnelid
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
        end
      end

      # DeleteDirectConnectTunnel返回参数结构体
      class DeleteDirectConnectTunnelResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccessPoints请求参数结构体
      class DescribeAccessPointsRequest < TencentCloud::Common::AbstractModel
        # @param RegionId: 接入点所在的地域。使用DescribeRegions查询

        # 您可以通过调用 DescribeRegions接口获取地域ID。
        # @type RegionId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :RegionId, :Offset, :Limit
        
        def initialize(regionid=nil, offset=nil, limit=nil)
          @RegionId = regionid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAccessPoints返回参数结构体
      class DescribeAccessPointsResponse < TencentCloud::Common::AbstractModel
        # @param AccessPointSet: 接入点信息。
        # @type AccessPointSet: Array
        # @param TotalCount: 符合接入点数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessPointSet, :TotalCount, :RequestId
        
        def initialize(accesspointset=nil, totalcount=nil, requestid=nil)
          @AccessPointSet = accesspointset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessPointSet'].nil?
            @AccessPointSet = []
            params['AccessPointSet'].each do |i|
              @AccessPointSet << AccessPoint.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDirectConnectTunnelExtra请求参数结构体
      class DescribeDirectConnectTunnelExtraRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 专用通道ID
        # @type DirectConnectTunnelId: String

        attr_accessor :DirectConnectTunnelId
        
        def initialize(directconnecttunnelid=nil)
          @DirectConnectTunnelId = directconnecttunnelid
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
        end
      end

      # DescribeDirectConnectTunnelExtra返回参数结构体
      class DescribeDirectConnectTunnelExtraResponse < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelExtra: 专用通道扩展信息
        # @type DirectConnectTunnelExtra: :class:`Tencentcloud::Dc.v20180410.models.DirectConnectTunnelExtra`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DirectConnectTunnelExtra, :RequestId
        
        def initialize(directconnecttunnelextra=nil, requestid=nil)
          @DirectConnectTunnelExtra = directconnecttunnelextra
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DirectConnectTunnelExtra'].nil?
            @DirectConnectTunnelExtra = DirectConnectTunnelExtra.new.deserialize(params['DirectConnectTunnelExtra'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDirectConnectTunnels请求参数结构体
      class DescribeDirectConnectTunnelsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件:
        # 参数不支持同时指定DirectConnectTunnelIds和Filters。
        # <li> direct-connect-tunnel-name, 专用通道名称。</li>
        # <li> direct-connect-tunnel-id, 专用通道实例ID，如dcx-abcdefgh。</li>
        # <li>direct-connect-id, 物理专线实例ID，如，dc-abcdefgh。</li>
        # @type Filters: Array
        # @param DirectConnectTunnelIds: 专用通道 ID数组
        # @type DirectConnectTunnelIds: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :Filters, :DirectConnectTunnelIds, :Offset, :Limit
        
        def initialize(filters=nil, directconnecttunnelids=nil, offset=nil, limit=nil)
          @Filters = filters
          @DirectConnectTunnelIds = directconnecttunnelids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @DirectConnectTunnelIds = params['DirectConnectTunnelIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDirectConnectTunnels返回参数结构体
      class DescribeDirectConnectTunnelsResponse < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelSet: 专用通道列表
        # @type DirectConnectTunnelSet: Array
        # @param TotalCount: 符合专用通道数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DirectConnectTunnelSet, :TotalCount, :RequestId
        
        def initialize(directconnecttunnelset=nil, totalcount=nil, requestid=nil)
          @DirectConnectTunnelSet = directconnecttunnelset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DirectConnectTunnelSet'].nil?
            @DirectConnectTunnelSet = []
            params['DirectConnectTunnelSet'].each do |i|
              @DirectConnectTunnelSet << DirectConnectTunnel.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDirectConnects请求参数结构体
      class DescribeDirectConnectsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件:
        # @type Filters: Array
        # @param DirectConnectIds: 物理专线 ID数组
        # @type DirectConnectIds: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :Filters, :DirectConnectIds, :Offset, :Limit
        
        def initialize(filters=nil, directconnectids=nil, offset=nil, limit=nil)
          @Filters = filters
          @DirectConnectIds = directconnectids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @DirectConnectIds = params['DirectConnectIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDirectConnects返回参数结构体
      class DescribeDirectConnectsResponse < TencentCloud::Common::AbstractModel
        # @param DirectConnectSet: 物理专线列表。
        # @type DirectConnectSet: Array
        # @param TotalCount: 符合物理专线列表数量。
        # @type TotalCount: Integer
        # @param AllSignLaw: 用户名下物理专线是否都签署了用户协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllSignLaw: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DirectConnectSet, :TotalCount, :AllSignLaw, :RequestId
        
        def initialize(directconnectset=nil, totalcount=nil, allsignlaw=nil, requestid=nil)
          @DirectConnectSet = directconnectset
          @TotalCount = totalcount
          @AllSignLaw = allsignlaw
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DirectConnectSet'].nil?
            @DirectConnectSet = []
            params['DirectConnectSet'].each do |i|
              @DirectConnectSet << DirectConnect.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @AllSignLaw = params['AllSignLaw']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInternetAddressQuota请求参数结构体
      class DescribeInternetAddressQuotaRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInternetAddressQuota返回参数结构体
      class DescribeInternetAddressQuotaResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6PrefixLen: IPv6互联网公网允许的最小前缀长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6PrefixLen: Integer
        # @param Ipv4BgpQuota: BGP类型IPv4互联网地址配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv4BgpQuota: Integer
        # @param Ipv4OtherQuota: 非BGP类型IPv4互联网地址配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv4OtherQuota: Integer
        # @param Ipv4BgpNum: BGP类型IPv4互联网地址已使用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv4BgpNum: Integer
        # @param Ipv4OtherNum: 非BGP类型互联网地址已使用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv4OtherNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6PrefixLen, :Ipv4BgpQuota, :Ipv4OtherQuota, :Ipv4BgpNum, :Ipv4OtherNum, :RequestId
        
        def initialize(ipv6prefixlen=nil, ipv4bgpquota=nil, ipv4otherquota=nil, ipv4bgpnum=nil, ipv4othernum=nil, requestid=nil)
          @Ipv6PrefixLen = ipv6prefixlen
          @Ipv4BgpQuota = ipv4bgpquota
          @Ipv4OtherQuota = ipv4otherquota
          @Ipv4BgpNum = ipv4bgpnum
          @Ipv4OtherNum = ipv4othernum
          @RequestId = requestid
        end

        def deserialize(params)
          @Ipv6PrefixLen = params['Ipv6PrefixLen']
          @Ipv4BgpQuota = params['Ipv4BgpQuota']
          @Ipv4OtherQuota = params['Ipv4OtherQuota']
          @Ipv4BgpNum = params['Ipv4BgpNum']
          @Ipv4OtherNum = params['Ipv4OtherNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInternetAddress请求参数结构体
      class DescribeInternetAddressRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值100
        # @type Limit: Integer
        # @param Filters: 过滤条件：
        # <li>AddrType, 地址类型。0：BGP 1; 1: 电信， 2：移动， 3：联通</li>
        # <li>AddrProto地址类型。0：IPv4 1:IPv6</li>
        # <li>Status 地址状态。 0：使用中， 1：已停用， 2：已退还</li>
        # <li>Subnet 互联网公网地址，数组</li>
        # <InstanceIds>互联网公网地址ID，数组</li>
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters
        
        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # DescribeInternetAddress返回参数结构体
      class DescribeInternetAddressResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 互联网公网地址数量
        # @type TotalCount: Integer
        # @param Subnets: 互联网公网地址列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subnets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Subnets, :RequestId
        
        def initialize(totalcount=nil, subnets=nil, requestid=nil)
          @TotalCount = totalcount
          @Subnets = subnets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Subnets'].nil?
            @Subnets = []
            params['Subnets'].each do |i|
              @Subnets << InternetAddressDetail.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInternetAddressStatistics请求参数结构体
      class DescribeInternetAddressStatisticsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInternetAddressStatistics返回参数结构体
      class DescribeInternetAddressStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 互联网公网地址统计信息数量
        # @type TotalCount: Integer
        # @param InternetAddressStatistics: 互联网公网地址统计信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetAddressStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InternetAddressStatistics, :RequestId
        
        def initialize(totalcount=nil, internetaddressstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @InternetAddressStatistics = internetaddressstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InternetAddressStatistics'].nil?
            @InternetAddressStatistics = []
            params['InternetAddressStatistics'].each do |i|
              @InternetAddressStatistics << InternetAddressStatistics.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicDirectConnectTunnelRoutes请求参数结构体
      class DescribePublicDirectConnectTunnelRoutesRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 专用通道ID
        # @type DirectConnectTunnelId: String
        # @param Filters: 过滤条件：
        # route-type：路由类型，取值：BGP/STATIC
        # route-subnet：路由cidr，取值如：192.68.1.0/24
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :DirectConnectTunnelId, :Filters, :Offset, :Limit
        
        def initialize(directconnecttunnelid=nil, filters=nil, offset=nil, limit=nil)
          @DirectConnectTunnelId = directconnecttunnelid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePublicDirectConnectTunnelRoutes返回参数结构体
      class DescribePublicDirectConnectTunnelRoutesResponse < TencentCloud::Common::AbstractModel
        # @param Routes: 互联网通道路由列表
        # @type Routes: Array
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Routes, :TotalCount, :RequestId
        
        def initialize(routes=nil, totalcount=nil, requestid=nil)
          @Routes = routes
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              @Routes << DirectConnectTunnelRoute.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 物理专线信息列表
      class DirectConnect < TencentCloud::Common::AbstractModel
        # @param DirectConnectId: 物理专线ID。
        # @type DirectConnectId: String
        # @param DirectConnectName: 物理专线的名称。
        # @type DirectConnectName: String
        # @param AccessPointId: 物理专线的接入点ID。
        # @type AccessPointId: String
        # @param State: 物理专线的状态。
        # 申请中：PENDING
        # 申请驳回：REJECTED
        # 待付款：TOPAY
        # 已付款：PAID
        # 建设中：ALLOCATED
        # 已开通：AVAILABLE
        # 删除中 ：DELETING
        # 已删除：DELETED 。
        # @type State: String
        # @param CreatedTime: 物理专线创建时间。
        # @type CreatedTime: String
        # @param EnabledTime: 物理专线的开通时间。
        # @type EnabledTime: String
        # @param LineOperator: 提供接入物理专线的运营商。ChinaTelecom：中国电信， ChinaMobile：中国移动，ChinaUnicom：中国联通， In-houseWiring：楼内线，ChinaOther：中国其他， InternationalOperator：境外其他。
        # @type LineOperator: String
        # @param Location: 本地数据中心的地理位置。
        # @type Location: String
        # @param Bandwidth: 物理专线接入接口带宽，单位为Mbps。
        # @type Bandwidth: Integer
        # @param PortType: 用户侧物理专线接入端口类型,取值：100Base-T：百兆电口,1000Base-T（默认值）：千兆电口,1000Base-LX：千兆单模光口（10千米）,10GBase-T：万兆电口10GBase-LR：万兆单模光口（10千米），默认值，千兆单模光口（10千米）
        # @type PortType: String
        # @param CircuitCode: 运营商或者服务商为物理专线提供的电路编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CircuitCode: String
        # @param RedundantDirectConnectId: 冗余物理专线的ID。
        # @type RedundantDirectConnectId: String
        # @param Vlan: 物理专线调试VLAN。默认开启VLAN，自动分配VLAN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vlan: Integer
        # @param TencentAddress: 物理专线调试腾讯侧互联IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TencentAddress: String
        # @param CustomerAddress: 物理专线调试用户侧互联IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomerAddress: String
        # @param CustomerName: 物理专线申请者姓名。默认从账户体系获取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomerName: String
        # @param CustomerContactMail: 物理专线申请者联系邮箱。默认从账户体系获取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomerContactMail: String
        # @param CustomerContactNumber: 物理专线申请者联系号码。默认从账户体系获取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomerContactNumber: String
        # @param ExpiredTime: 物理专线的过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: String
        # @param ChargeType: 物理专线计费类型。 NON_RECURRING_CHARGE：一次性接入费用；PREPAID_BY_YEAR：按年预付费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param FaultReportContactPerson: 报障联系人。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaultReportContactPerson: String
        # @param FaultReportContactNumber: 报障联系电话。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaultReportContactNumber: String
        # @param TagSet: 标签键值对
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param AccessPointType: 物理专线的接入点类型。
        # @type AccessPointType: String
        # @param IdcCity: IDC所在城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdcCity: String
        # @param ChargeState: 计费状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeState: String
        # @param StartTime: 物理专线开通时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param SignLaw: 物理专线是否已签署用户协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignLaw: Boolean

        attr_accessor :DirectConnectId, :DirectConnectName, :AccessPointId, :State, :CreatedTime, :EnabledTime, :LineOperator, :Location, :Bandwidth, :PortType, :CircuitCode, :RedundantDirectConnectId, :Vlan, :TencentAddress, :CustomerAddress, :CustomerName, :CustomerContactMail, :CustomerContactNumber, :ExpiredTime, :ChargeType, :FaultReportContactPerson, :FaultReportContactNumber, :TagSet, :AccessPointType, :IdcCity, :ChargeState, :StartTime, :SignLaw
        
        def initialize(directconnectid=nil, directconnectname=nil, accesspointid=nil, state=nil, createdtime=nil, enabledtime=nil, lineoperator=nil, location=nil, bandwidth=nil, porttype=nil, circuitcode=nil, redundantdirectconnectid=nil, vlan=nil, tencentaddress=nil, customeraddress=nil, customername=nil, customercontactmail=nil, customercontactnumber=nil, expiredtime=nil, chargetype=nil, faultreportcontactperson=nil, faultreportcontactnumber=nil, tagset=nil, accesspointtype=nil, idccity=nil, chargestate=nil, starttime=nil, signlaw=nil)
          @DirectConnectId = directconnectid
          @DirectConnectName = directconnectname
          @AccessPointId = accesspointid
          @State = state
          @CreatedTime = createdtime
          @EnabledTime = enabledtime
          @LineOperator = lineoperator
          @Location = location
          @Bandwidth = bandwidth
          @PortType = porttype
          @CircuitCode = circuitcode
          @RedundantDirectConnectId = redundantdirectconnectid
          @Vlan = vlan
          @TencentAddress = tencentaddress
          @CustomerAddress = customeraddress
          @CustomerName = customername
          @CustomerContactMail = customercontactmail
          @CustomerContactNumber = customercontactnumber
          @ExpiredTime = expiredtime
          @ChargeType = chargetype
          @FaultReportContactPerson = faultreportcontactperson
          @FaultReportContactNumber = faultreportcontactnumber
          @TagSet = tagset
          @AccessPointType = accesspointtype
          @IdcCity = idccity
          @ChargeState = chargestate
          @StartTime = starttime
          @SignLaw = signlaw
        end

        def deserialize(params)
          @DirectConnectId = params['DirectConnectId']
          @DirectConnectName = params['DirectConnectName']
          @AccessPointId = params['AccessPointId']
          @State = params['State']
          @CreatedTime = params['CreatedTime']
          @EnabledTime = params['EnabledTime']
          @LineOperator = params['LineOperator']
          @Location = params['Location']
          @Bandwidth = params['Bandwidth']
          @PortType = params['PortType']
          @CircuitCode = params['CircuitCode']
          @RedundantDirectConnectId = params['RedundantDirectConnectId']
          @Vlan = params['Vlan']
          @TencentAddress = params['TencentAddress']
          @CustomerAddress = params['CustomerAddress']
          @CustomerName = params['CustomerName']
          @CustomerContactMail = params['CustomerContactMail']
          @CustomerContactNumber = params['CustomerContactNumber']
          @ExpiredTime = params['ExpiredTime']
          @ChargeType = params['ChargeType']
          @FaultReportContactPerson = params['FaultReportContactPerson']
          @FaultReportContactNumber = params['FaultReportContactNumber']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              @TagSet << Tag.new.deserialize(i)
            end
          end
          @AccessPointType = params['AccessPointType']
          @IdcCity = params['IdcCity']
          @ChargeState = params['ChargeState']
          @StartTime = params['StartTime']
          @SignLaw = params['SignLaw']
        end
      end

      # 专用通道信息列表
      class DirectConnectTunnel < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 专用通道ID
        # @type DirectConnectTunnelId: String
        # @param DirectConnectId: 物理专线ID
        # @type DirectConnectId: String
        # @param State: 专用通道状态
        # AVAILABLE:就绪或者已连接
        # PENDING:申请中
        # ALLOCATING:配置中
        # ALLOCATED:配置完成
        # ALTERING:修改中
        # DELETING:删除中
        # DELETED:删除完成
        # COMFIRMING:待接受
        # REJECTED:拒绝
        # @type State: String
        # @param DirectConnectOwnerAccount: 物理专线的拥有者，开发商账号 ID
        # @type DirectConnectOwnerAccount: String
        # @param OwnerAccount: 专用通道的拥有者，开发商账号 ID
        # @type OwnerAccount: String
        # @param NetworkType: 网络类型，分别为VPC、BMVPC、CCN
        #  VPC：私有网络 ，BMVPC：黑石网络，CCN：云联网
        # @type NetworkType: String
        # @param NetworkRegion: VPC地域对应的网络名，如ap-guangzhou
        # @type NetworkRegion: String
        # @param VpcId: 私有网络统一 ID 或者黑石网络统一 ID
        # @type VpcId: String
        # @param DirectConnectGatewayId: 专线网关 ID
        # @type DirectConnectGatewayId: String
        # @param RouteType: BGP ：BGP路由 STATIC：静态 默认为 BGP 路由
        # @type RouteType: String
        # @param BgpPeer: 用户侧BGP，Asn，AuthKey
        # @type BgpPeer: :class:`Tencentcloud::Dc.v20180410.models.BgpPeer`
        # @param RouteFilterPrefixes: 用户侧网段地址
        # @type RouteFilterPrefixes: Array
        # @param Vlan: 专用通道的Vlan
        # @type Vlan: Integer
        # @param TencentAddress: TencentAddress，腾讯侧互联 IP
        # @type TencentAddress: String
        # @param CustomerAddress: CustomerAddress，用户侧互联 IP
        # @type CustomerAddress: String
        # @param DirectConnectTunnelName: 专用通道名称
        # @type DirectConnectTunnelName: String
        # @param CreatedTime: 专用通道创建时间
        # @type CreatedTime: String
        # @param Bandwidth: 专用通道带宽值
        # @type Bandwidth: Integer
        # @param TagSet: 专用通道标签值
        # @type TagSet: Array
        # @param NetDetectId: 关联的网络自定义探测ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetDetectId: String
        # @param EnableBGPCommunity: BGP community开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableBGPCommunity: Boolean
        # @param NatType: 是否为Nat通道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatType: Integer
        # @param VpcRegion: VPC地域简码，如gz、cd
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcRegion: String
        # @param BfdEnable: 是否开启BFD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BfdEnable: Integer
        # @param AccessPointType: 专用通道接入点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessPointType: String
        # @param DirectConnectGatewayName: 专线网关名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DirectConnectGatewayName: String
        # @param VpcName: VPC名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param TencentBackupAddress: TencentBackupAddress，腾讯侧备用互联 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TencentBackupAddress: String
        # @param SignLaw: 专用通道关联的物理专线是否签署了用户协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignLaw: Boolean
        # @param CloudAttachId: 高速上云服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudAttachId: String

        attr_accessor :DirectConnectTunnelId, :DirectConnectId, :State, :DirectConnectOwnerAccount, :OwnerAccount, :NetworkType, :NetworkRegion, :VpcId, :DirectConnectGatewayId, :RouteType, :BgpPeer, :RouteFilterPrefixes, :Vlan, :TencentAddress, :CustomerAddress, :DirectConnectTunnelName, :CreatedTime, :Bandwidth, :TagSet, :NetDetectId, :EnableBGPCommunity, :NatType, :VpcRegion, :BfdEnable, :AccessPointType, :DirectConnectGatewayName, :VpcName, :TencentBackupAddress, :SignLaw, :CloudAttachId
        
        def initialize(directconnecttunnelid=nil, directconnectid=nil, state=nil, directconnectowneraccount=nil, owneraccount=nil, networktype=nil, networkregion=nil, vpcid=nil, directconnectgatewayid=nil, routetype=nil, bgppeer=nil, routefilterprefixes=nil, vlan=nil, tencentaddress=nil, customeraddress=nil, directconnecttunnelname=nil, createdtime=nil, bandwidth=nil, tagset=nil, netdetectid=nil, enablebgpcommunity=nil, nattype=nil, vpcregion=nil, bfdenable=nil, accesspointtype=nil, directconnectgatewayname=nil, vpcname=nil, tencentbackupaddress=nil, signlaw=nil, cloudattachid=nil)
          @DirectConnectTunnelId = directconnecttunnelid
          @DirectConnectId = directconnectid
          @State = state
          @DirectConnectOwnerAccount = directconnectowneraccount
          @OwnerAccount = owneraccount
          @NetworkType = networktype
          @NetworkRegion = networkregion
          @VpcId = vpcid
          @DirectConnectGatewayId = directconnectgatewayid
          @RouteType = routetype
          @BgpPeer = bgppeer
          @RouteFilterPrefixes = routefilterprefixes
          @Vlan = vlan
          @TencentAddress = tencentaddress
          @CustomerAddress = customeraddress
          @DirectConnectTunnelName = directconnecttunnelname
          @CreatedTime = createdtime
          @Bandwidth = bandwidth
          @TagSet = tagset
          @NetDetectId = netdetectid
          @EnableBGPCommunity = enablebgpcommunity
          @NatType = nattype
          @VpcRegion = vpcregion
          @BfdEnable = bfdenable
          @AccessPointType = accesspointtype
          @DirectConnectGatewayName = directconnectgatewayname
          @VpcName = vpcname
          @TencentBackupAddress = tencentbackupaddress
          @SignLaw = signlaw
          @CloudAttachId = cloudattachid
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
          @DirectConnectId = params['DirectConnectId']
          @State = params['State']
          @DirectConnectOwnerAccount = params['DirectConnectOwnerAccount']
          @OwnerAccount = params['OwnerAccount']
          @NetworkType = params['NetworkType']
          @NetworkRegion = params['NetworkRegion']
          @VpcId = params['VpcId']
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @RouteType = params['RouteType']
          unless params['BgpPeer'].nil?
            @BgpPeer = BgpPeer.new.deserialize(params['BgpPeer'])
          end
          unless params['RouteFilterPrefixes'].nil?
            @RouteFilterPrefixes = []
            params['RouteFilterPrefixes'].each do |i|
              @RouteFilterPrefixes << RouteFilterPrefix.new.deserialize(i)
            end
          end
          @Vlan = params['Vlan']
          @TencentAddress = params['TencentAddress']
          @CustomerAddress = params['CustomerAddress']
          @DirectConnectTunnelName = params['DirectConnectTunnelName']
          @CreatedTime = params['CreatedTime']
          @Bandwidth = params['Bandwidth']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              @TagSet << Tag.new.deserialize(i)
            end
          end
          @NetDetectId = params['NetDetectId']
          @EnableBGPCommunity = params['EnableBGPCommunity']
          @NatType = params['NatType']
          @VpcRegion = params['VpcRegion']
          @BfdEnable = params['BfdEnable']
          @AccessPointType = params['AccessPointType']
          @DirectConnectGatewayName = params['DirectConnectGatewayName']
          @VpcName = params['VpcName']
          @TencentBackupAddress = params['TencentBackupAddress']
          @SignLaw = params['SignLaw']
          @CloudAttachId = params['CloudAttachId']
        end
      end

      # 专用通道扩展信息
      class DirectConnectTunnelExtra < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 专用通道ID
        # @type DirectConnectTunnelId: String
        # @param DirectConnectId: 物理专线ID
        # @type DirectConnectId: String
        # @param State: 专用通道状态
        # AVAILABLE:就绪或者已连接
        # PENDING:申请中
        # ALLOCATING:配置中
        # ALLOCATED:配置完成
        # ALTERING:修改中
        # DELETING:删除中
        # DELETED:删除完成
        # COMFIRMING:待接受
        # REJECTED:拒绝
        # @type State: String
        # @param DirectConnectOwnerAccount: 物理专线的拥有者，开发商账号 ID
        # @type DirectConnectOwnerAccount: String
        # @param OwnerAccount: 专用通道的拥有者，开发商账号 ID
        # @type OwnerAccount: String
        # @param NetworkType: 网络类型，分别为VPC、BMVPC、CCN
        #  VPC：私有网络 ，BMVPC：黑石网络，CCN：云联网
        # @type NetworkType: String
        # @param NetworkRegion: VPC地域对应的网络名，如ap-guangzhou
        # @type NetworkRegion: String
        # @param VpcId: 私有网络统一 ID 或者黑石网络统一 ID
        # @type VpcId: String
        # @param DirectConnectGatewayId: 专线网关 ID
        # @type DirectConnectGatewayId: String
        # @param RouteType: BGP ：BGP路由 STATIC：静态 默认为 BGP 路由
        # @type RouteType: String
        # @param BgpPeer: 用户侧BGP，Asn，AuthKey
        # @type BgpPeer: :class:`Tencentcloud::Dc.v20180410.models.BgpPeer`
        # @param RouteFilterPrefixes: 用户侧网段地址
        # @type RouteFilterPrefixes: Array
        # @param PublicAddresses: 互联网通道公网网段地址
        # @type PublicAddresses: Array
        # @param Vlan: 专用通道的Vlan
        # @type Vlan: Integer
        # @param TencentAddress: 腾讯侧互联 IP
        # @type TencentAddress: String
        # @param TencentBackupAddress: 腾讯侧备用互联IP
        # @type TencentBackupAddress: String
        # @param CustomerAddress: 用户侧互联 IP
        # @type CustomerAddress: String
        # @param DirectConnectTunnelName: 专用通道名称
        # @type DirectConnectTunnelName: String
        # @param CreatedTime: 专用通道创建时间
        # @type CreatedTime: String
        # @param Bandwidth: 专用通道带宽值
        # @type Bandwidth: Integer
        # @param NetDetectId: 关联的网络自定义探测ID
        # @type NetDetectId: String
        # @param EnableBGPCommunity: BGP community开关
        # @type EnableBGPCommunity: Boolean
        # @param NatType: 是否为Nat通道
        # @type NatType: Integer
        # @param VpcRegion: VPC地域简码，如gz、cd
        # @type VpcRegion: String
        # @param BfdEnable: 是否开启BFD
        # @type BfdEnable: Integer
        # @param NqaEnable: 是否开启NQA
        # @type NqaEnable: Integer
        # @param AccessPointType: 专用通道接入点类型
        # @type AccessPointType: String
        # @param DirectConnectGatewayName: 专线网关名称
        # @type DirectConnectGatewayName: String
        # @param VpcName: VPC名称
        # @type VpcName: String
        # @param SignLaw: 专用通道关联的物理专线是否签署了用户协议
        # @type SignLaw: Boolean
        # @param BfdInfo: BFD配置信息
        # @type BfdInfo: :class:`Tencentcloud::Dc.v20180410.models.BFDInfo`
        # @param NqaInfo: NQA配置信息
        # @type NqaInfo: :class:`Tencentcloud::Dc.v20180410.models.NQAInfo`
        # @param BgpStatus: BGP状态
        # @type BgpStatus: :class:`Tencentcloud::Dc.v20180410.models.BGPStatus`
        # @param IPv6Enable: 是否开启IPv6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6Enable: Integer
        # @param TencentIPv6Address: 腾讯侧互联IPv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TencentIPv6Address: String
        # @param TencentBackupIPv6Address: 腾讯侧备用互联IPv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TencentBackupIPv6Address: String
        # @param BgpIPv6Status: BGPv6状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BgpIPv6Status: :class:`Tencentcloud::Dc.v20180410.models.BGPStatus`
        # @param CustomerIPv6Address: 用户侧互联IPv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomerIPv6Address: String

        attr_accessor :DirectConnectTunnelId, :DirectConnectId, :State, :DirectConnectOwnerAccount, :OwnerAccount, :NetworkType, :NetworkRegion, :VpcId, :DirectConnectGatewayId, :RouteType, :BgpPeer, :RouteFilterPrefixes, :PublicAddresses, :Vlan, :TencentAddress, :TencentBackupAddress, :CustomerAddress, :DirectConnectTunnelName, :CreatedTime, :Bandwidth, :NetDetectId, :EnableBGPCommunity, :NatType, :VpcRegion, :BfdEnable, :NqaEnable, :AccessPointType, :DirectConnectGatewayName, :VpcName, :SignLaw, :BfdInfo, :NqaInfo, :BgpStatus, :IPv6Enable, :TencentIPv6Address, :TencentBackupIPv6Address, :BgpIPv6Status, :CustomerIPv6Address
        
        def initialize(directconnecttunnelid=nil, directconnectid=nil, state=nil, directconnectowneraccount=nil, owneraccount=nil, networktype=nil, networkregion=nil, vpcid=nil, directconnectgatewayid=nil, routetype=nil, bgppeer=nil, routefilterprefixes=nil, publicaddresses=nil, vlan=nil, tencentaddress=nil, tencentbackupaddress=nil, customeraddress=nil, directconnecttunnelname=nil, createdtime=nil, bandwidth=nil, netdetectid=nil, enablebgpcommunity=nil, nattype=nil, vpcregion=nil, bfdenable=nil, nqaenable=nil, accesspointtype=nil, directconnectgatewayname=nil, vpcname=nil, signlaw=nil, bfdinfo=nil, nqainfo=nil, bgpstatus=nil, ipv6enable=nil, tencentipv6address=nil, tencentbackupipv6address=nil, bgpipv6status=nil, customeripv6address=nil)
          @DirectConnectTunnelId = directconnecttunnelid
          @DirectConnectId = directconnectid
          @State = state
          @DirectConnectOwnerAccount = directconnectowneraccount
          @OwnerAccount = owneraccount
          @NetworkType = networktype
          @NetworkRegion = networkregion
          @VpcId = vpcid
          @DirectConnectGatewayId = directconnectgatewayid
          @RouteType = routetype
          @BgpPeer = bgppeer
          @RouteFilterPrefixes = routefilterprefixes
          @PublicAddresses = publicaddresses
          @Vlan = vlan
          @TencentAddress = tencentaddress
          @TencentBackupAddress = tencentbackupaddress
          @CustomerAddress = customeraddress
          @DirectConnectTunnelName = directconnecttunnelname
          @CreatedTime = createdtime
          @Bandwidth = bandwidth
          @NetDetectId = netdetectid
          @EnableBGPCommunity = enablebgpcommunity
          @NatType = nattype
          @VpcRegion = vpcregion
          @BfdEnable = bfdenable
          @NqaEnable = nqaenable
          @AccessPointType = accesspointtype
          @DirectConnectGatewayName = directconnectgatewayname
          @VpcName = vpcname
          @SignLaw = signlaw
          @BfdInfo = bfdinfo
          @NqaInfo = nqainfo
          @BgpStatus = bgpstatus
          @IPv6Enable = ipv6enable
          @TencentIPv6Address = tencentipv6address
          @TencentBackupIPv6Address = tencentbackupipv6address
          @BgpIPv6Status = bgpipv6status
          @CustomerIPv6Address = customeripv6address
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
          @DirectConnectId = params['DirectConnectId']
          @State = params['State']
          @DirectConnectOwnerAccount = params['DirectConnectOwnerAccount']
          @OwnerAccount = params['OwnerAccount']
          @NetworkType = params['NetworkType']
          @NetworkRegion = params['NetworkRegion']
          @VpcId = params['VpcId']
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @RouteType = params['RouteType']
          unless params['BgpPeer'].nil?
            @BgpPeer = BgpPeer.new.deserialize(params['BgpPeer'])
          end
          unless params['RouteFilterPrefixes'].nil?
            @RouteFilterPrefixes = []
            params['RouteFilterPrefixes'].each do |i|
              @RouteFilterPrefixes << RouteFilterPrefix.new.deserialize(i)
            end
          end
          unless params['PublicAddresses'].nil?
            @PublicAddresses = []
            params['PublicAddresses'].each do |i|
              @PublicAddresses << RouteFilterPrefix.new.deserialize(i)
            end
          end
          @Vlan = params['Vlan']
          @TencentAddress = params['TencentAddress']
          @TencentBackupAddress = params['TencentBackupAddress']
          @CustomerAddress = params['CustomerAddress']
          @DirectConnectTunnelName = params['DirectConnectTunnelName']
          @CreatedTime = params['CreatedTime']
          @Bandwidth = params['Bandwidth']
          @NetDetectId = params['NetDetectId']
          @EnableBGPCommunity = params['EnableBGPCommunity']
          @NatType = params['NatType']
          @VpcRegion = params['VpcRegion']
          @BfdEnable = params['BfdEnable']
          @NqaEnable = params['NqaEnable']
          @AccessPointType = params['AccessPointType']
          @DirectConnectGatewayName = params['DirectConnectGatewayName']
          @VpcName = params['VpcName']
          @SignLaw = params['SignLaw']
          unless params['BfdInfo'].nil?
            @BfdInfo = BFDInfo.new.deserialize(params['BfdInfo'])
          end
          unless params['NqaInfo'].nil?
            @NqaInfo = NQAInfo.new.deserialize(params['NqaInfo'])
          end
          unless params['BgpStatus'].nil?
            @BgpStatus = BGPStatus.new.deserialize(params['BgpStatus'])
          end
          @IPv6Enable = params['IPv6Enable']
          @TencentIPv6Address = params['TencentIPv6Address']
          @TencentBackupIPv6Address = params['TencentBackupIPv6Address']
          unless params['BgpIPv6Status'].nil?
            @BgpIPv6Status = BGPStatus.new.deserialize(params['BgpIPv6Status'])
          end
          @CustomerIPv6Address = params['CustomerIPv6Address']
        end
      end

      # 专线通道路由
      class DirectConnectTunnelRoute < TencentCloud::Common::AbstractModel
        # @param RouteId: 专用通道路由ID
        # @type RouteId: String
        # @param DestinationCidrBlock: 网段CIDR
        # @type DestinationCidrBlock: String
        # @param RouteType: 路由类型：BGP/STATIC路由
        # @type RouteType: String
        # @param Status: ENABLE：路由启用，DISABLE：路由禁用
        # @type Status: String
        # @param ASPath: ASPath信息
        # @type ASPath: Array
        # @param NextHop: 路由下一跳IP
        # @type NextHop: String

        attr_accessor :RouteId, :DestinationCidrBlock, :RouteType, :Status, :ASPath, :NextHop
        
        def initialize(routeid=nil, destinationcidrblock=nil, routetype=nil, status=nil, aspath=nil, nexthop=nil)
          @RouteId = routeid
          @DestinationCidrBlock = destinationcidrblock
          @RouteType = routetype
          @Status = status
          @ASPath = aspath
          @NextHop = nexthop
        end

        def deserialize(params)
          @RouteId = params['RouteId']
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @RouteType = params['RouteType']
          @Status = params['Status']
          @ASPath = params['ASPath']
          @NextHop = params['NextHop']
        end
      end

      # DisableInternetAddress请求参数结构体
      class DisableInternetAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 公网互联网地址ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DisableInternetAddress返回参数结构体
      class DisableInternetAddressResponse < TencentCloud::Common::AbstractModel
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

      # EnableInternetAddress请求参数结构体
      class EnableInternetAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 互联网公网地址ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # EnableInternetAddress返回参数结构体
      class EnableInternetAddressResponse < TencentCloud::Common::AbstractModel
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

      # 用于条件过滤查询
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

      # 互联网地址详细信息
      class InternetAddressDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 互联网地址ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Subnet: 互联网网络地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subnet: String
        # @param MaskLen: 网络地址掩码长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaskLen: Integer
        # @param AddrType: 0:BGP
        # 1:电信
        # 2:移动
        # 3:联通
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddrType: Integer
        # @param Status: 0:使用中
        # 1:已停用
        # 2:已退还
        # @type Status: Integer
        # @param ApplyTime: 申请时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyTime: String
        # @param StopTime: 停用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StopTime: String
        # @param ReleaseTime: 退还时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String
        # @param Region: 地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AppId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param AddrProto: 0:IPv4 1:IPv6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddrProto: Integer
        # @param ReserveTime: 释放状态的IP地址保留的天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReserveTime: Integer

        attr_accessor :InstanceId, :Subnet, :MaskLen, :AddrType, :Status, :ApplyTime, :StopTime, :ReleaseTime, :Region, :AppId, :AddrProto, :ReserveTime
        
        def initialize(instanceid=nil, subnet=nil, masklen=nil, addrtype=nil, status=nil, applytime=nil, stoptime=nil, releasetime=nil, region=nil, appid=nil, addrproto=nil, reservetime=nil)
          @InstanceId = instanceid
          @Subnet = subnet
          @MaskLen = masklen
          @AddrType = addrtype
          @Status = status
          @ApplyTime = applytime
          @StopTime = stoptime
          @ReleaseTime = releasetime
          @Region = region
          @AppId = appid
          @AddrProto = addrproto
          @ReserveTime = reservetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Subnet = params['Subnet']
          @MaskLen = params['MaskLen']
          @AddrType = params['AddrType']
          @Status = params['Status']
          @ApplyTime = params['ApplyTime']
          @StopTime = params['StopTime']
          @ReleaseTime = params['ReleaseTime']
          @Region = params['Region']
          @AppId = params['AppId']
          @AddrProto = params['AddrProto']
          @ReserveTime = params['ReserveTime']
        end
      end

      # 互联网公网地址统计
      class InternetAddressStatistics < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param SubnetNum: 互联网公网地址数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetNum: Integer

        attr_accessor :Region, :SubnetNum
        
        def initialize(region=nil, subnetnum=nil)
          @Region = region
          @SubnetNum = subnetnum
        end

        def deserialize(params)
          @Region = params['Region']
          @SubnetNum = params['SubnetNum']
        end
      end

      # ModifyDirectConnectAttribute请求参数结构体
      class ModifyDirectConnectAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectId: 物理专线的ID。
        # @type DirectConnectId: String
        # @param DirectConnectName: 物理专线名称。
        # @type DirectConnectName: String
        # @param CircuitCode: 运营商或者服务商为物理专线提供的电路编码。
        # @type CircuitCode: String
        # @param Vlan: 物理专线调试VLAN。
        # @type Vlan: Integer
        # @param TencentAddress: 物理专线调试腾讯侧互联 IP。
        # @type TencentAddress: String
        # @param CustomerAddress: 物理专线调试用户侧互联 IP。
        # @type CustomerAddress: String
        # @param CustomerName: 物理专线申请者姓名。默认从账户体系获取。
        # @type CustomerName: String
        # @param CustomerContactMail: 物理专线申请者联系邮箱。默认从账户体系获取。
        # @type CustomerContactMail: String
        # @param CustomerContactNumber: 物理专线申请者联系号码。默认从账户体系获取。
        # @type CustomerContactNumber: String
        # @param FaultReportContactPerson: 报障联系人。
        # @type FaultReportContactPerson: String
        # @param FaultReportContactNumber: 报障联系电话。
        # @type FaultReportContactNumber: String
        # @param SignLaw: 物理专线申请者补签用户使用协议
        # @type SignLaw: Boolean

        attr_accessor :DirectConnectId, :DirectConnectName, :CircuitCode, :Vlan, :TencentAddress, :CustomerAddress, :CustomerName, :CustomerContactMail, :CustomerContactNumber, :FaultReportContactPerson, :FaultReportContactNumber, :SignLaw
        
        def initialize(directconnectid=nil, directconnectname=nil, circuitcode=nil, vlan=nil, tencentaddress=nil, customeraddress=nil, customername=nil, customercontactmail=nil, customercontactnumber=nil, faultreportcontactperson=nil, faultreportcontactnumber=nil, signlaw=nil)
          @DirectConnectId = directconnectid
          @DirectConnectName = directconnectname
          @CircuitCode = circuitcode
          @Vlan = vlan
          @TencentAddress = tencentaddress
          @CustomerAddress = customeraddress
          @CustomerName = customername
          @CustomerContactMail = customercontactmail
          @CustomerContactNumber = customercontactnumber
          @FaultReportContactPerson = faultreportcontactperson
          @FaultReportContactNumber = faultreportcontactnumber
          @SignLaw = signlaw
        end

        def deserialize(params)
          @DirectConnectId = params['DirectConnectId']
          @DirectConnectName = params['DirectConnectName']
          @CircuitCode = params['CircuitCode']
          @Vlan = params['Vlan']
          @TencentAddress = params['TencentAddress']
          @CustomerAddress = params['CustomerAddress']
          @CustomerName = params['CustomerName']
          @CustomerContactMail = params['CustomerContactMail']
          @CustomerContactNumber = params['CustomerContactNumber']
          @FaultReportContactPerson = params['FaultReportContactPerson']
          @FaultReportContactNumber = params['FaultReportContactNumber']
          @SignLaw = params['SignLaw']
        end
      end

      # ModifyDirectConnectAttribute返回参数结构体
      class ModifyDirectConnectAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDirectConnectTunnelAttribute请求参数结构体
      class ModifyDirectConnectTunnelAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 专用通道ID
        # @type DirectConnectTunnelId: String
        # @param DirectConnectTunnelName: 专用通道名称
        # @type DirectConnectTunnelName: String
        # @param BgpPeer: 用户侧BGP，包括Asn，AuthKey
        # @type BgpPeer: :class:`Tencentcloud::Dc.v20180410.models.BgpPeer`
        # @param RouteFilterPrefixes: 用户侧网段地址
        # @type RouteFilterPrefixes: Array
        # @param TencentAddress: 腾讯侧互联IP
        # @type TencentAddress: String
        # @param CustomerAddress: 用户侧互联IP
        # @type CustomerAddress: String
        # @param Bandwidth: 专用通道带宽值，单位为M。
        # @type Bandwidth: Integer
        # @param TencentBackupAddress: 腾讯侧备用互联IP
        # @type TencentBackupAddress: String

        attr_accessor :DirectConnectTunnelId, :DirectConnectTunnelName, :BgpPeer, :RouteFilterPrefixes, :TencentAddress, :CustomerAddress, :Bandwidth, :TencentBackupAddress
        
        def initialize(directconnecttunnelid=nil, directconnecttunnelname=nil, bgppeer=nil, routefilterprefixes=nil, tencentaddress=nil, customeraddress=nil, bandwidth=nil, tencentbackupaddress=nil)
          @DirectConnectTunnelId = directconnecttunnelid
          @DirectConnectTunnelName = directconnecttunnelname
          @BgpPeer = bgppeer
          @RouteFilterPrefixes = routefilterprefixes
          @TencentAddress = tencentaddress
          @CustomerAddress = customeraddress
          @Bandwidth = bandwidth
          @TencentBackupAddress = tencentbackupaddress
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
          @DirectConnectTunnelName = params['DirectConnectTunnelName']
          unless params['BgpPeer'].nil?
            @BgpPeer = BgpPeer.new.deserialize(params['BgpPeer'])
          end
          unless params['RouteFilterPrefixes'].nil?
            @RouteFilterPrefixes = []
            params['RouteFilterPrefixes'].each do |i|
              @RouteFilterPrefixes << RouteFilterPrefix.new.deserialize(i)
            end
          end
          @TencentAddress = params['TencentAddress']
          @CustomerAddress = params['CustomerAddress']
          @Bandwidth = params['Bandwidth']
          @TencentBackupAddress = params['TencentBackupAddress']
        end
      end

      # ModifyDirectConnectTunnelAttribute返回参数结构体
      class ModifyDirectConnectTunnelAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDirectConnectTunnelExtra请求参数结构体
      class ModifyDirectConnectTunnelExtraRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 专用通道ID
        # @type DirectConnectTunnelId: String
        # @param Vlan: 专用通道的Vlan
        # @type Vlan: Integer
        # @param BgpPeer: 用户侧BGP，Asn，AuthKey
        # @type BgpPeer: :class:`Tencentcloud::Dc.v20180410.models.BgpPeer`
        # @param RouteFilterPrefixes: 用户侧过滤网段地址
        # @type RouteFilterPrefixes: :class:`Tencentcloud::Dc.v20180410.models.RouteFilterPrefix`
        # @param TencentAddress: 腾讯侧互联IP
        # @type TencentAddress: String
        # @param TencentBackupAddress: 腾讯侧备用互联IP
        # @type TencentBackupAddress: String
        # @param CustomerAddress: 用户侧互联IP
        # @type CustomerAddress: String
        # @param Bandwidth: 专用通道带宽值
        # @type Bandwidth: Integer
        # @param EnableBGPCommunity: BGP community开关
        # @type EnableBGPCommunity: Boolean
        # @param BfdEnable: 是否开启BFD
        # @type BfdEnable: Integer
        # @param NqaEnable: 是否开启NQA
        # @type NqaEnable: Integer
        # @param BfdInfo: BFD配置信息
        # @type BfdInfo: :class:`Tencentcloud::Dc.v20180410.models.BFDInfo`
        # @param NqaInfo: NQA配置信息
        # @type NqaInfo: :class:`Tencentcloud::Dc.v20180410.models.NQAInfo`
        # @param IPv6Enable: 0：停用IPv6
        # 1: 启用IPv6
        # @type IPv6Enable: Integer
        # @param CustomerIDCRoutes: 去往用户侧的路由信息
        # @type CustomerIDCRoutes: Array

        attr_accessor :DirectConnectTunnelId, :Vlan, :BgpPeer, :RouteFilterPrefixes, :TencentAddress, :TencentBackupAddress, :CustomerAddress, :Bandwidth, :EnableBGPCommunity, :BfdEnable, :NqaEnable, :BfdInfo, :NqaInfo, :IPv6Enable, :CustomerIDCRoutes
        
        def initialize(directconnecttunnelid=nil, vlan=nil, bgppeer=nil, routefilterprefixes=nil, tencentaddress=nil, tencentbackupaddress=nil, customeraddress=nil, bandwidth=nil, enablebgpcommunity=nil, bfdenable=nil, nqaenable=nil, bfdinfo=nil, nqainfo=nil, ipv6enable=nil, customeridcroutes=nil)
          @DirectConnectTunnelId = directconnecttunnelid
          @Vlan = vlan
          @BgpPeer = bgppeer
          @RouteFilterPrefixes = routefilterprefixes
          @TencentAddress = tencentaddress
          @TencentBackupAddress = tencentbackupaddress
          @CustomerAddress = customeraddress
          @Bandwidth = bandwidth
          @EnableBGPCommunity = enablebgpcommunity
          @BfdEnable = bfdenable
          @NqaEnable = nqaenable
          @BfdInfo = bfdinfo
          @NqaInfo = nqainfo
          @IPv6Enable = ipv6enable
          @CustomerIDCRoutes = customeridcroutes
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
          @Vlan = params['Vlan']
          unless params['BgpPeer'].nil?
            @BgpPeer = BgpPeer.new.deserialize(params['BgpPeer'])
          end
          unless params['RouteFilterPrefixes'].nil?
            @RouteFilterPrefixes = RouteFilterPrefix.new.deserialize(params['RouteFilterPrefixes'])
          end
          @TencentAddress = params['TencentAddress']
          @TencentBackupAddress = params['TencentBackupAddress']
          @CustomerAddress = params['CustomerAddress']
          @Bandwidth = params['Bandwidth']
          @EnableBGPCommunity = params['EnableBGPCommunity']
          @BfdEnable = params['BfdEnable']
          @NqaEnable = params['NqaEnable']
          unless params['BfdInfo'].nil?
            @BfdInfo = BFDInfo.new.deserialize(params['BfdInfo'])
          end
          unless params['NqaInfo'].nil?
            @NqaInfo = NQAInfo.new.deserialize(params['NqaInfo'])
          end
          @IPv6Enable = params['IPv6Enable']
          unless params['CustomerIDCRoutes'].nil?
            @CustomerIDCRoutes = []
            params['CustomerIDCRoutes'].each do |i|
              @CustomerIDCRoutes << RouteFilterPrefix.new.deserialize(i)
            end
          end
        end
      end

      # ModifyDirectConnectTunnelExtra返回参数结构体
      class ModifyDirectConnectTunnelExtraResponse < TencentCloud::Common::AbstractModel
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

      # nqa配置信息
      class NQAInfo < TencentCloud::Common::AbstractModel
        # @param ProbeFailedTimes: 健康检查次数
        # @type ProbeFailedTimes: Integer
        # @param Interval: 健康检查间隔
        # @type Interval: Integer
        # @param DestinationIp: 健康检查地址
        # @type DestinationIp: String

        attr_accessor :ProbeFailedTimes, :Interval, :DestinationIp
        
        def initialize(probefailedtimes=nil, interval=nil, destinationip=nil)
          @ProbeFailedTimes = probefailedtimes
          @Interval = interval
          @DestinationIp = destinationip
        end

        def deserialize(params)
          @ProbeFailedTimes = params['ProbeFailedTimes']
          @Interval = params['Interval']
          @DestinationIp = params['DestinationIp']
        end
      end

      # RejectDirectConnectTunnel请求参数结构体
      class RejectDirectConnectTunnelRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectTunnelId: 无
        # @type DirectConnectTunnelId: String

        attr_accessor :DirectConnectTunnelId
        
        def initialize(directconnecttunnelid=nil)
          @DirectConnectTunnelId = directconnecttunnelid
        end

        def deserialize(params)
          @DirectConnectTunnelId = params['DirectConnectTunnelId']
        end
      end

      # RejectDirectConnectTunnel返回参数结构体
      class RejectDirectConnectTunnelResponse < TencentCloud::Common::AbstractModel
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

      # ReleaseInternetAddress请求参数结构体
      class ReleaseInternetAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 公网互联网地址ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # ReleaseInternetAddress返回参数结构体
      class ReleaseInternetAddressResponse < TencentCloud::Common::AbstractModel
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

      # 用户侧网段地址
      class RouteFilterPrefix < TencentCloud::Common::AbstractModel
        # @param Cidr: 用户侧网段地址
        # @type Cidr: String

        attr_accessor :Cidr
        
        def initialize(cidr=nil)
          @Cidr = cidr
        end

        def deserialize(params)
          @Cidr = params['Cidr']
        end
      end

      # 标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

    end
  end
end

