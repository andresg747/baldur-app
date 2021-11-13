import Layout from '../components/layout'
import ProjectList from '../components/project-list'

import { PrismaClient } from "@prisma/client";

export async function getServerSideProps() {
  console.log('esto se está ejecutando?');
  const prisma = new PrismaClient();
  const projects = await prisma.project.findMany({
    select: {
      id: true,
      name: true,
      bannerUrl: true
    }
  });
  return { props: { projects } }
}

export default function Page({ projects }) {
  return (
    <Layout>
      <ProjectList projects={projects} />
    </Layout>
  )
}