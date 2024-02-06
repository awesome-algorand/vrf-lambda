import sodium from 'sodium-native'
const nonce = Buffer.alloc(sodium.crypto_secretbox_NONCEBYTES)
export const handler = async (event) => {
    return {
        statusCode: 200,
        body: JSON.stringify(nonce),
    };
};
