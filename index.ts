import {PrismaClient} from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    await prisma.user.create({
        data:{
            name:"Alice",
            email:"alice@prisma.io",
            
            profile:{
                create:{bio:"I like coding"}
            }
        }
      })

const allUsers = await prisma.user.findMany({include:{posts:true,profile:true}})
console.dir(allUsers,{depth:null})

}

main().catch(e=>{throw e}).finally(async()=>{await prisma.$disconnect()})
