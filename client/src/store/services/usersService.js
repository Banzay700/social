import { createApi } from "@reduxjs/toolkit/query/react";
import { instance } from "../../api";

export const usersApi = createApi({
  reducerPath: "usersApi",
  baseQuery: async (args) => {
    try {
      const response = await instance(args);
      return { data: response.data };
    } catch (error) {
      return { error };
    }
  },
  endpoints: (builder) => ({
    getUsers: builder.query({
      query: () => `users`,
      providesTags: (result, error) => [{ type: "Users" }],
    }),
  }),
});

export const { useGetUsersQuery } = usersApi;