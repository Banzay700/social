import { Stack } from "@mui/material";

import { FriendsSubSidebar } from "../../../components/sidebars";
import { withLayout } from "../../../hooks/withLayout";
import { FriendsUserProfileSection } from "../FriendsUserProfileSection";
import { useAvailableFriendRequestsQuery } from "../../../store/services/friendService.js";

const FriendsRequestsPage = () => {
  //   TODO: додати запит, який повертатиме список людей з запитами на дружбу

  const { data: requests } = useAvailableFriendRequestsQuery();

  console.log(requests);
  return (
    <Stack width="100%" direction="row" height="calc(100vh - 54px)">
      {requests && (
        <FriendsSubSidebar
          variant="requests"
          users={requests}
          heading="Friend Requests"
          subTitle="Friend Requests"
        />
      )}
      <FriendsUserProfileSection />
    </Stack>
  );
};

FriendsRequestsPage.displayName = "FriendsRequests";

const FriendsRequests = withLayout(FriendsRequestsPage);

export default FriendsRequests;
