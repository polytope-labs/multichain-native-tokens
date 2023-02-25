pragma solidity ^0.8.17;

import "openzeppelin-contracts/contracts/utils/introspection/IERC165.sol";

// The EIP-165 identifier of this interface is 0xd0017968
interface IERC5679Ext20 {
   function mint(address _to, uint256 _amount, bytes calldata _data) external;
   function burn(address _from, uint256 _amount, bytes calldata _data) external;
}

// Interface for role-based access control for smart contracts
interface IERC_ACL_CORE {
    function hasRole(bytes32 role, address account) external view returns (bool);
    function grantRole(bytes32 role, address account) external;
    function revokeRole(bytes32 role, address account) external;
}


// The EIP-165 identifier of this interface is 0x01cbdea7
interface IERC6160Ext20 is IERC5679Ext20, IERC_ACL_CORE, IERC165 {}