import Prisma from '@prisma/client'

const { PrismaClient } = Prisma;
const prisma = new PrismaClient()

const run = async () => {
  try {
    const result = await prisma.blockchain.create({
      data: {
        name: 'Ronin',
        nativeToken: {
          connect: {
            id: 'ckvy8l9rj0102heskpbwxsixz',
          }
        },
        project: {
          connect: {
            id: 'ckvy72kgn00399uskx8reka09',
          }
        },
        scannerUrl: 'https://etherscan.io/',
        websiteUrl: 'https://axieinfinity.com/',
      }
    });
  } catch (error) {
    console.log(error);
  }
}

run();

export default run;