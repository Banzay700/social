package com.coyjiv.isocial.service.friend;

import com.coyjiv.isocial.domain.UserFriendStatus;
import com.coyjiv.isocial.dto.respone.friend.FriendResponseDto;
import com.coyjiv.isocial.exceptions.EntityNotFoundException;

import java.io.IOException;
import java.util.List;

public interface IFriendService {
  boolean sendFriendRequest(Long addresserId) throws IOException, EntityNotFoundException, IllegalAccessException;

  boolean acceptFriendRequest(Long friendId) throws IllegalAccessException;

  boolean declineOrCancelFriendRequest(Long friendId) throws IllegalAccessException;

  boolean deleteFriend(Long friendId) throws IllegalAccessException;

  Long getFriendsCount(Long userId);

  List<FriendResponseDto> findAllFriends(Long userId, int page, int size);

  Long getSubscribersCount(Long userId);

  List<FriendResponseDto> availableFriendRequests() throws EntityNotFoundException;

  UserFriendStatus getFriendStatus(Long id, Long authenticationPrincipal);

  Long getSubscriptionsCount(Long id);
}
