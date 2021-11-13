import ProjectItem from '../components/project-item'

const ProjectList = ({ projects }) => {
  return (
    <div className="list">
      {projects && projects.length && projects.map((project) => (
        <ProjectItem {...project} projectName={project.name} key={project.id} />
      ))}
    </div>
  )
}
export default ProjectList;