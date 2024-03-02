import PropTypes from "prop-types";
import { Stack, Typography, Link } from "@mui/material";

import { FriendCard } from "../index";
import { FriendCardSkeleton } from "../FriendCard/FriendCardSkeleton";
import { FriendsListWrapper } from "./FriendsList.styled.js";

const FriendsList = ({ variant, users, heading, link, isLoading }) => {
  const range = [...Array(5).keys()];

  if (isLoading) {
    return (
      <FriendsListWrapper>
        <Stack
          direction="row"
          justifyContent="space-between"
          marginBottom="20px"
        >
          <Typography fontSize="20px" fontWeight="700">
            {heading}
          </Typography>
          <Link href={link} underline="none">
            All
          </Link>
        </Stack>
        <Stack direction="row" flexWrap="wrap" gap="20px">
          {range.map((item) => (
            <FriendCardSkeleton key={item} />
          ))}
        </Stack>
      </FriendsListWrapper>
    );
  }

  return (
    <FriendsListWrapper>
      <Stack direction="row" justifyContent="space-between" marginBottom="20px">
        <Typography fontSize="20px" fontWeight="700">
          {heading}
        </Typography>
        <Link href={link} underline="none">
          All
        </Link>
      </Stack>
      <Stack direction="row" flexWrap="wrap" gap="20px">
        {users?.map(({ id, firstName, lastName, avatarsUrl }) => (
          <FriendCard
            variant={variant}
            key={id}
            fullName={`${firstName} ${lastName}`}
            images={avatarsUrl}
          />
        ))}
      </Stack>
    </FriendsListWrapper>
  );
};

FriendsList.propTypes = {
  variant: PropTypes.oneOf(["friends", "requests"]),
  users: PropTypes.array,
  heading: PropTypes.string,
  link: PropTypes.string,
  isLoading: PropTypes.bool,
};

FriendsList.displayName = "FriendsList";

export default FriendsList;
