import PropTypes from "prop-types";
import { useState } from "react";
import { Stack, Typography } from "@mui/material";

import { PATH } from "../../../utils/constants";
import { SubSidebarHeader } from "./SubSidebarHeader";
import { useSearchParams } from "react-router-dom";
import {
  FriendsSidebarUserCard,
  FriendsSidebarUserCardSkeleton,
} from "../../friends-page-components";
import { SidebarSearch } from "../../index";
import {
  useAcceptFriendRequestMutation,
  useDeclineFriendRequestMutation,
  useRemoveFriendMutation,
} from "../../../store/services/friendService";
import { SidebarItemsList, SidebarWrapper } from "./FriendsSubSidebar.styled";

const FriendsSubSidebar = ({
  variant,
  users,
  withSearch,
  heading,
  subTitle,
  isLoading,
}) => {
  const [searchValue, setSearchValue] = useState("");
  let [searchParams, setSearchParams] = useSearchParams();

  const [acceptFriendRequest] = useAcceptFriendRequestMutation();
  const [declineFriendRequest] = useDeclineFriendRequestMutation();
  const [removeFriend] = useRemoveFriendMutation();

  if (isLoading) {
    return (
      <SidebarWrapper>
        <SubSidebarHeader heading={heading} link={PATH.FRIENDS}>
          {withSearch && (
            <SidebarSearch
              value={searchValue}
              placeholder="Search friends"
              marginBottom="6px"
            />
          )}
        </SubSidebarHeader>
        <SidebarItemsList>
          <Typography
            fontSize="17px"
            fontWeight="600"
            marginLeft="12px"
            marginBottom="12px"
          >{`${users?.length ?? "0"} ${subTitle}`}</Typography>
          <Stack width="100%" gap="10px">
            {[...Array(4).keys()]?.map((item) => (
              <FriendsSidebarUserCardSkeleton key={item} variant={variant} />
            ))}
          </Stack>
        </SidebarItemsList>
      </SidebarWrapper>
    );
  }

  const filteredUsers = users?.filter((user) => {
    return (
      user.firstName.toLowerCase().includes(searchValue.toLowerCase()) ||
      user.lastName.toLowerCase().includes(searchValue.toLowerCase())
    );
  });

  const handleChange = (value) => setSearchValue(value);
  const handleChooseUser = (id) => setSearchParams({ id });
  const handleDeclineRequest = (e, id) => {
    e.stopPropagation();
    declineFriendRequest({ friendId: id });
  };
  const handleConfirmRequest = (e, id) => {
    e.stopPropagation();
    acceptFriendRequest({ friendId: id });
  };

  const handleRemoveFriend = (id) => {
    removeFriend({ friendId: id });
  };

  const handleOpenMessage = (id) => {
    console.log(`start messages with user ${id}`);
  };

  return (
    <SidebarWrapper>
      <SubSidebarHeader heading={heading} link={PATH.FRIENDS}>
        {withSearch && (
          <SidebarSearch
            value={searchValue}
            placeholder="Search friends"
            marginBottom="6px"
            onChange={handleChange}
          />
        )}
      </SubSidebarHeader>
      <SidebarItemsList>
        <Typography
          fontSize="17px"
          fontWeight="600"
          marginLeft="12px"
          marginBottom="12px"
        >{`${users?.length ?? "0"} ${subTitle}`}</Typography>
        <Stack width="100%" gap="10px">
          {filteredUsers?.map(({ id, firstName, lastName, avatarsUrl }) => (
            <FriendsSidebarUserCard
              key={id}
              userImage={avatarsUrl}
              fullName={`${firstName} ${lastName}`}
              variant={variant}
              onConfirm={(e) => handleConfirmRequest(e, id)}
              onDelete={(e) => handleDeclineRequest(e, id)}
              onClick={() => handleChooseUser(id)}
              onRemove={() => handleRemoveFriend(id)}
              onMessage={() => handleOpenMessage(id)}
            />
          ))}
        </Stack>
      </SidebarItemsList>
    </SidebarWrapper>
  );
};

FriendsSubSidebar.propTypes = {
  withSearch: PropTypes.bool,
  variant: PropTypes.oneOf(["friends", "requests"]),
  subTitle: PropTypes.string,
  heading: PropTypes.string,
  users: PropTypes.oneOfType([PropTypes.array, PropTypes.string]),
};

FriendsSubSidebar.displayName = "FriendsSubSidebar";

export default FriendsSubSidebar;
