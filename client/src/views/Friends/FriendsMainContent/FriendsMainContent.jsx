import { Divider, Stack } from "@mui/material";

import { FriendsList } from "../../../components/friends-page-components";
import { PATH } from "../../../utils/constants";
import {
  useAvailableFriendRequestsQuery,
  useGetFriendsListQuery,
} from "../../../store/services/friendService";
import { MainContentWrapper } from "./FriendsMainContent.styled";

const FriendsMainContent = () => {
  const id = localStorage.getItem("userId");
  const { data: friends, isLoading } = useGetFriendsListQuery(id);
  const { data: requests } = useAvailableFriendRequestsQuery();

  return (
    <MainContentWrapper>
      <Stack alignItems="center" gap="15px"></Stack>
      <FriendsList
        variant="requests"
        users={requests?.content}
        isLoading={isLoading}
        heading="Friend Requests"
        link={PATH.FRIENDS_REQUESTS}
      />

      <Divider orientation="horizontal" />
      <FriendsList
        variant="friends"
        users={friends}
        isLoading={isLoading}
        heading="All Friends"
        link={PATH.FRIENDS}
      />
    </MainContentWrapper>
  );
};

FriendsMainContent.displayName = "FriendsMainContent";

export default FriendsMainContent;
