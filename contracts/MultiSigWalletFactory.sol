pragma solidity ^0.8.0;
import "./Factory.sol";
import "./MultiSigWallet.sol";


/// @title Multisignature wallet factory - Allows creation of multisig wallet.
/// @author Stefan George - <stefan.george@consensys.net>
contract MultiSigWalletFactory is Factory {

    /*
     * Public functions
     */
    /// @dev Allows verified creation of multisignature wallet.
    /// @param _owners List of initial owners.
    /// @param _required Number of required confirmations.
    /// @return wallet wallet address.
    function create(address[] calldata _owners, uint _required)
        public
        returns (MultiSigWallet wallet)
    {
        wallet = new MultiSigWallet(_owners, _required);
        register(address(wallet));
    }
}
