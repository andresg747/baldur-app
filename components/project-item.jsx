import { Card } from 'antd';
import { EditOutlined, EllipsisOutlined, SettingOutlined } from '@ant-design/icons';

const { Meta } = Card;

const ProjectItem = ({ bannerUrl, projectName, projectDescription }) => (
  <Card
    style={{ width: 300 }}
    cover={
      <img
        alt="banner"
        src={bannerUrl}
      />
    }
    actions={[
      <SettingOutlined key="setting" />,
      <EditOutlined key="edit" />,
      <EllipsisOutlined key="ellipsis" />,
    ]}
  >
    <Meta
      title={projectName}
      description={projectDescription}
    />
  </Card>
)

export default ProjectItem;