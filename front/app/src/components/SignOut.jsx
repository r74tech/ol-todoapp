import Cookies from "js-cookie";
import { useContext, useEffect } from "react";
import { useHistory } from "react-router-dom";
import { AuthContext } from "../App";

export const SignOut = () => {
  const { setIsSignedIn, setCurrentUser } = useContext(AuthContext);
  const history = useHistory();

  useEffect(() => {
    const handleSignOut = async () => {
      Cookies.remove("_access_token");
      Cookies.remove("_client");
      Cookies.remove("_uid");

      setIsSignedIn(false);
      setCurrentUser(null);

      history.push("/signin");
    };
    handleSignOut();
  }, [setIsSignedIn, setCurrentUser, history]);

  return (
    <div>
      <p>ログアウトしました</p>
    </div>
  );
};
