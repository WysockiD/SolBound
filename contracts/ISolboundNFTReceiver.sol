// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ISolboundReceiver {
    /**
     * @dev Whenever an {Solbound} `tokenId` token is transferred to this contract via {ISolbound-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
     *
     * The selector can be obtained in Solidity with `ISolboundReceiver.onSolboundReceived.selector`.
     */
    function onSolboundReceived(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}