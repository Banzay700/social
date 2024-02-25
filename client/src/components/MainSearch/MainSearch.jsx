import PropTypes from "prop-types";
import { Typography } from "@mui/material";
import { useEffect, useState } from "react";

import { ActionIconButton } from "../index";
import { MainSearchItem } from "./MainSearchItem";
import {
  LogoContainer,
  LogoHiddenContentWrapper,
  LogoLink,
  SearchBase,
  SearchContainer,
  SearchIcon,
  SearchMenu,
  SearchWrapper,
} from "./MainSearch.styled";

const MainSearch = ({ any }) => {
  const [inputActive, setInputActive] = useState(false);
  const [menuOpen, setMenuOpen] = useState(false);

  const handleBlur = () => {
    setInputActive(false);
  };

  useEffect(() => {
    if (inputActive) {
      const t = setTimeout(() => setMenuOpen(true), 80);
      return () => clearTimeout(t);
    }
    if (!inputActive) {
      const t = setTimeout(() => setMenuOpen(false), 80);
      return () => clearTimeout(t);
    }
  }, [inputActive]);

  return (
    <SearchWrapper open={inputActive}>
      <LogoContainer open={inputActive}>
        <LogoHiddenContentWrapper open={inputActive}>
          <LogoLink to="/" open={inputActive}>
            <Typography fontSize="22px" fontWeight="bold">
              iSocial
            </Typography>
          </LogoLink>
          <ActionIconButton icon="arrowLeft" />
        </LogoHiddenContentWrapper>
      </LogoContainer>
      <SearchContainer>
        <SearchIcon open={inputActive} />
        <SearchBase
          onFocus={() => setInputActive(!inputActive)}
          onBlur={handleBlur}
          placeholder="Search Isocial"
        />
      </SearchContainer>
      {menuOpen && (
        <SearchMenu>
          <MainSearchItem variant="history" fullName="John Doe" />
          <MainSearchItem variant="search" fullName="Adam Smith" />
          <MainSearchItem
            variant="search"
            fullName="Adam Smith"
            avatarUrl="https://i.pravatar.cc/300?u=591"
          />
        </SearchMenu>
      )}
    </SearchWrapper>
  );
};

MainSearch.propTypes = {
  any: PropTypes.any,
};

MainSearch.displayName = "MainSearch";

export default MainSearch;
