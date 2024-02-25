import { Stack } from "@mui/material";

import { FriendsSubSidebar } from "../../../components/sidebars";
import { withLayout } from "../../../hooks/withLayout";
import { friends } from "../../../mock";
import { FriendsUserProfileSection } from "../FriendsUserProfileSection";

const FriendsRequestsPage = () => {
  return (
    <Stack width="100%" direction="row" height="calc(100vh - 54px)">
      <FriendsSubSidebar
        variant="requests"
        users={friends}
        heading="Friend Requests"
        subTitle="Friend Requests"
      />
      <FriendsUserProfileSection />
    </Stack>
  );
};

FriendsRequestsPage.displayName = "FriendsRequests";

const FriendsRequests = withLayout(FriendsRequestsPage);

export default FriendsRequests;
