import { navbarLinks } from "../../../data/navbarLinks";
import MessengerButton from "./actions/MessengerButton";
import { HeaderLinks } from "./HeaderLinks";
import NotificationButton from "./actions/NotificationButton";
import AvatarButton from "./actions/AvatarButton";
import { MainSearch } from "../../MainSearch";
import styles from "./navbar.module.scss";

const Navbar = () => {
  return (
    <header className={styles.header}>
      <MainSearch />

      <nav className={styles.navWrapper}>
        <ul className={styles.navLinkList}>
          <HeaderLinks navbarLinks={navbarLinks} />
        </ul>
        <ul className={styles.actionList}>
          <li>
            <NotificationButton />
          </li>
          <li>
            <MessengerButton />
          </li>
          <li>
            <AvatarButton />
          </li>
        </ul>
      </nav>
    </header>
  );
};

export default Navbar;
