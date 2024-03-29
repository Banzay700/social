import { profileApi } from "./profileService";

export const friendsApi = profileApi.injectEndpoints({
  endpoints: (builder) => ({
    getFriendsList: builder.query({
      query: (id, page = 0, size = 10) =>
        `friends/${id}?page=${page}&size=${size}`,
      providesTags: (id) => [
        { type: "Friends", id },
        { type: "Profile", id },
      ],
    }),
    sendFriendRequest: builder.mutation({
      query: ({ userId }) => {
        return {
          url: `friends?addresserId=${userId}`,
          method: "POST",
        };
      },
      invalidatesTags: () => [{ type: "Friends" }, { type: "Profile" }],
    }),
    removeFriend: builder.mutation({
      query: ({ friendId }) => {
        return {
          url: `friends?friendId=${friendId}`,
          method: "DELETE",
          data: { friendId },
        };
      },
      invalidatesTags: (result, error, { userId }) => [
        { type: "Friends", id: userId },
        { type: "Profile", id: userId },
      ],
    }),
    acceptFriendRequest: builder.mutation({
      query: ({ friendId }) => {
        return {
          url: `friends/accept?friendId=${friendId}`,
          method: "POST",
        };
      },
      invalidatesTags: (result, error, { userId }) => [
        { type: "Friends", id: userId },
        { type: "Profile", id: userId },
      ],
    }),
    declineFriendRequest: builder.mutation({
      query: ({ friendId }) => {
        return {
          url: `friends/decline?friendId=${friendId}`,
          method: "POST",
        };
      },
      invalidatesTags: (result, error, { userId }) => [
        { type: "Friends", id: userId },
        { type: "Profile", id: userId },
      ],
    }),
    subscribersCount: builder.query({
      query: (id) => `friends/subscribersCount/${id}`,
      providesTags: (id) => [
        { type: "Friends", id },
        { type: "Profile", id },
      ],
    }),
    cancelFriendRequest: builder.mutation({
      query: ({ userId }) => {
        return {
          url: `friends/cancelFriendRequest?friendId=${userId}`,
          method: "POST",
          data: { userId },
        };
      },
      invalidatesTags: (result, error, { userId }) => [
        { type: "Friends", id: userId },
        { type: "Profile", id: userId },
      ],
    }),
    availableFriendRequests: builder.query({
      query: (id) => `friends/availableFriendRequests?userId=${id}`,
      providesTags: (id) => [{ type: "Friends" }, { type: "Profile" }],
    }),
  }),
});

export const {
  useGetFriendsListQuery,
  useSendFriendRequestMutation,
  useRemoveFriendMutation,
  useAcceptFriendRequestMutation,
  useDeclineFriendRequestMutation,
  useFriendsCountQuery,
  useSubscribersCountQuery,
  useCancelFriendRequestMutation,
  useAvailableFriendRequestsQuery,
} = friendsApi;
